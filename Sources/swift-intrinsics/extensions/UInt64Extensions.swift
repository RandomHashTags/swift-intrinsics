//
//  UInt64Extensions.swift
//
//
//  Created by Evan Anderson on 12/30/24.
//

// MARK: Init SIMD
public extension UInt64 {
    init(_ simd: SIMD2<Int32>) {
        self = withUnsafePointer(to: simd, { $0.withMemoryRebound(to: UInt64.self, capacity: 1, { $0.pointee })})
    }
    init(_ simd: SIMD4<Int16>) {
        self = withUnsafePointer(to: simd, { $0.withMemoryRebound(to: UInt64.self, capacity: 1, { $0.pointee })})
    }
    init(_ simd: SIMD8<Int8>) {
        self = withUnsafePointer(to: simd, { $0.withMemoryRebound(to: UInt64.self, capacity: 1, { $0.pointee })})
    }

    init(_ simd: SIMD2<UInt32>) {
        self = withUnsafePointer(to: simd, { $0.withMemoryRebound(to: UInt64.self, capacity: 1, { $0.pointee })})
    }
    init(_ simd: SIMD4<UInt16>) {
        self = withUnsafePointer(to: simd, { $0.withMemoryRebound(to: UInt64.self, capacity: 1, { $0.pointee })})
    }
    init(_ simd: SIMD8<UInt8>) {
        self = withUnsafePointer(to: simd, { $0.withMemoryRebound(to: UInt64.self, capacity: 1, { $0.pointee })})
    }
}