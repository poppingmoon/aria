import CryptoKit
import Foundation

enum WebPushKeySetError: Error {
  case format
  case auth
  case privateKey
}

struct WebPushKeySet {
  let privateKey: P256.KeyAgreement.PrivateKey
  let auth: Data

  init(string: String) throws {
    let keys = string.split(separator: "+")
    guard keys.count == 3 else {
      throw WebPushKeySetError.format
    }

    guard let auth = Data(base64UrlEncoded: String(keys[1])) else {
      throw WebPushKeySetError.auth
    }
    self.auth = auth

    guard let privateKey = Data(base64UrlEncoded: String(keys[2])) else {
      throw WebPushKeySetError.privateKey
    }
    if #available(iOS 14.0, *) {
      self.privateKey = try P256.KeyAgreement.PrivateKey(
        derRepresentation: privateKey
      )
    } else {
      let octetStringTag = 4
      let privateKeyLength = 32
      let pattern = [UInt8(octetStringTag), UInt8(privateKeyLength)]
      guard let range = privateKey.firstRange(of: pattern),
        range.upperBound + privateKeyLength <= privateKey.count
      else {
        throw WebPushKeySetError.privateKey
      }
      self.privateKey = try P256.KeyAgreement.PrivateKey(
        rawRepresentation: privateKey[
          range.upperBound..<range.upperBound + privateKeyLength
        ]
      )
    }
  }
}

extension Data {
  init?(base64UrlEncoded: String) {
    let base64Encoded =
      base64UrlEncoded
      .replacingOccurrences(of: "-", with: "+")
      .replacingOccurrences(of: "_", with: "/")
      .appending(
        String(repeating: "=", count: (4 - base64UrlEncoded.count % 4) % 4)
      )
    self.init(base64Encoded: base64Encoded)
  }
}
