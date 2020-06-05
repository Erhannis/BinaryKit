//
//  UIntExtensions.swift
//  
//
//  Created by Devran on 01.10.19.
//

extension UInt32 {
    init(bytes: [UInt8]) {
        self = bytes.reduce(UInt32(0)) { value, byte in
            return value << UInt8.bitWidth | UInt32(byte)
        }
    }
}

extension UInt64 {
    init(bytes: [UInt8]) {
        self = bytes.reduce(UInt64(0)) { value, byte in
            return value << UInt8.bitWidth | UInt64(byte)
        }
    }
}
