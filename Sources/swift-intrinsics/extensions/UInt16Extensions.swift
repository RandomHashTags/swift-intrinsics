//
//  UInt16Extensions.swift
//
//
//  Created by Evan Anderson on 12/30/24.
//

// MARK: Init SIMD
public extension UInt16 {
    init(_ simd: SIMD2<Int16>) {
        self = withUnsafePointer(to: simd, { $0.withMemoryRebound(to: UInt16.self, capacity: 1, { $0.pointee })})
    }

    init(_ simd: SIMD2<UInt16>) {
        self = withUnsafePointer(to: simd, { $0.withMemoryRebound(to: UInt16.self, capacity: 1, { $0.pointee })})
    }
}