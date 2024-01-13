//
//  DataToArrayOfUInt8Array.swift
//  CppSwiftObjCInteropPoC
//
//  Created by Luis David Goyes on 12/01/24.
//

import Foundation

@objcMembers
public class DataToArrayOfUInt8Swift: NSObject {
    let data: NSData
    required init(data: NSData) {
        self.data = data
    }
    public func convertDataToArrayOfUInt8() -> [NSNumber] {
        let length = data.count
        let bytes = [UInt8](data)
        var array = [NSNumber]()
        for i in 0..<length {
            let number = NSNumber(value: bytes[i])
            array.append(number)
        }
        return array
    }
}
