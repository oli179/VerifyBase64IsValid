import Cocoa
//import Foundation
//
//func isValidBase64String(_ base64String: String) -> Bool {
//    // 移除Base64字串中的空格和換行符
//    let cleanBase64String = base64String.replacingOccurrences(of: "\\s", with: "", options: .regularExpression)
//
//    // 檢查Base64字串是否符合標準Base64字符集
//    if let decodedData = Data(base64Encoded: cleanBase64String), let _ = String(data: decodedData, encoding: .utf8) {
//        return true
//    }
//
//    return false
//}
//
//// 測試
//let validBase64String = "U2FsdGVkX1+VZoQbENiCbggOoRW3L+CuV5gHtcZkdZw="
//let invalidBase64String = "InvalidBase64String"
//
//if isValidBase64String(validBase64String) {
//    print("有效的Base64字串")
//} else {
//    print("無效的Base64字串")
//}
//
//if isValidBase64String(invalidBase64String) {
//    print("有效的Base64字串")
//} else {
//    print("無效的Base64字串")
//}

import Foundation

func isValidBase64String(_ base64String: String) -> Bool {
    // 移除Base64字串中的空格和換行符
    let cleanBase64String = base64String.replacingOccurrences(of: "\\s", with: "", options: .regularExpression)

    // 檢查Base64字串是否符合標準Base64字符集
    if let decodedData = Data(base64Encoded: cleanBase64String) {
        return true
    }

    return false
}

// 測試
let validBase64String = "MF2a3O6gTUVMMTy9ySfs5C0mcfU4gRhtyvYFopUe/IfV8/U2CQswATY/Urovr3pTHaLUiyiTcliXDH84fePhkMW7UnWPsIeGiUtW++Bd5f/vIp5lxIN+wbq2I6itxpEPW1fZTNEHOgoR/AUaVEmsU572Ok109zokcXhAJSNhBf6wnJ5ktEmtmWFSQx4=" // 二進制數據的Base64表示
let invalidBase64String = "InvalidBase64String"

if isValidBase64String(validBase64String) {
    print("有效的Base64字串")
} else {
    print("無效的Base64字串")
}

if isValidBase64String(invalidBase64String) {
    print("有效的Base64字串")
} else {
    print("無效的Base64字串")
}


// 計算長度
let encodedDataString = "JsGdbGynNKUJfAvRZDSwwNXhZXtKvRspFqCDpslsRwve0trsL5Q5zhyaJBR5u/zNP8++QSdjDAp7XTuvbDQp7wOaYE22KBkxZrtxH/mOULxqP/fYUAp6aZZ6+lEIL0UL0xtEVIioUq07yfKkXsHFlPNyItuxo5+DJm9KzkdGoNEgJ0Lm7qy+pZ4SwpU="
if let decodedData = Data(base64Encoded: encodedDataString) {
    let dataLength = decodedData.count
    print("Length of the decoded data:", dataLength)
} else {
    print("Failed to decode the data.")
}
