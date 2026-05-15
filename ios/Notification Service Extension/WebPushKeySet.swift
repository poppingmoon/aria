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
    self.privateKey = try P256.KeyAgreement.PrivateKey(
      derRepresentation: privateKey,
    )
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
