import CryptoKit
import Foundation

enum WebPushError: Error {
  case messageSize
}

struct WebPush {
  // https://datatracker.ietf.org/doc/html/rfc8291
  static func decryptMessage(keySet: WebPushKeySet, message: Data) throws
    -> Data
  {
    guard message.count > 20 else {
      throw WebPushError.messageSize
    }
    let salt = message[0..<16]
    let rs = message[16..<20].reduce(0) { acc, value in
      (acc << 8) + Int(value)
    }
    let idlen = Int(message[20])
    guard message.count > 21 + idlen else {
      throw WebPushError.messageSize
    }
    let keyid = message[21..<21 + idlen]
    let ciphertext = message.dropFirst(21 + idlen)

    let uaPublic = keySet.privateKey.publicKey
    let uaPublicRaw = uaPublic.x963Representation
    let uaPrivate = keySet.privateKey

    let asPublicRaw = keyid
    let asPublic = try P256.KeyAgreement.PublicKey(
      x963Representation: asPublicRaw,
    )

    let ecdhSecret = try uaPrivate.sharedSecretFromKeyAgreement(with: asPublic)

    let keyInfo = Data(
      "WebPush: info".utf8 + [0] + uaPublicRaw + asPublicRaw
    )

    let ikm = ecdhSecret.hkdfDerivedSymmetricKey(
      using: SHA256.self,
      salt: keySet.auth,
      sharedInfo: keyInfo,
      outputByteCount: 32,
    )

    let prk = SymmetricKey(
      data: HMAC<SHA256>.authenticationCode(
        for: ikm.withUnsafeBytes { Data($0) },
        using: SymmetricKey(data: salt),
      )
    )

    let cekInfo = Data("Content-Encoding: aes128gcm".utf8 + [0, 1])
    let cek = HMAC<SHA256>.authenticationCode(for: cekInfo, using: prk)
      .prefix(16)

    let nonceInfo = Data("Content-Encoding: nonce".utf8 + [0, 1])
    let nonce = HMAC<SHA256>.authenticationCode(for: nonceInfo, using: prk)
      .prefix(12)

    let records = stride(
      from: ciphertext.startIndex,
      to: ciphertext.endIndex,
      by: rs,
    ).map { i in
      ciphertext[i..<min(i + rs, ciphertext.endIndex)]
    }
    let encryptionKey = SymmetricKey(data: Data(cek))

    let plaintext = try records.enumerated().map { seq, record in
      var combined = nonce + record
      combined[11] ^= UInt8(seq)
      let sealedBox = try AES.GCM.SealedBox(combined: combined)
      let decryptedRecord = try AES.GCM.open(sealedBox, using: encryptionKey)
      return decryptedRecord.dropLast(1)
    }.joined()

    return Data(plaintext)
  }
}
