// Playground - noun: a place where people can play

import Foundation

extension NSData {
    // There must be a more functional way to do this...
    func uintValue() -> UInt
    {
        let length = self.length > sizeof(UInt64) ? sizeof(UInt64) : self.length
        var bytes: [UInt8] = [UInt8](count: length, repeatedValue: 0)
        self.getBytes(&bytes, length: length)
        
        let bitsInByte = 8
        
        var shiftLevel: UInt = UInt(bitsInByte * bytes.count)
        var collector: UInt = 0
        for byte in bytes
        {
            shiftLevel -= UInt(bitsInByte)
            collector |= UInt(byte) << shiftLevel
        }
        
        return collector
    }
    
    func functionalUintValue() -> UInt
    {
        let length = self.length > sizeof(UInt64) ? sizeof(UInt64) : self.length
        var bytes: [UInt8] = [UInt8](count: length, repeatedValue: 0)
        self.getBytes(&bytes, length: length)
        
        let bitsInByte = 8
        return reduce(bytes, 0) { (total, byte) -> UInt in
            return (total << UInt(bitsInByte)) + UInt(byte)
        }
    }
}

let data = NSData(bytes:[0x4, 0x7, 0x17, 0xFF, 0x23, 0x53, 0x77, 0x88, 0x99] as [UInt8], length: 9)

data.uintValue() == data.functionalUintValue()


