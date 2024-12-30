//
//  UInt128Extensions.swift
//
//
//  Created by Evan Anderson on 12/30/24.
//

// MARK: Init SIMD
@available(macOS 15.0, iOS 18.0, watchOS 11.0, tvOS 18.0, visionOS 2.0, *)
public extension UInt128 {
    init(_ simd: SIMD2<Int64>) {
        self = withUnsafePointer(to: simd, { $0.withMemoryRebound(to: UInt128.self, capacity: 1, { $0.pointee })})
    }
    init(_ simd: SIMD4<Int32>) {
        self = withUnsafePointer(to: simd, { $0.withMemoryRebound(to: UInt128.self, capacity: 1, { $0.pointee })})
    }
    init(_ simd: SIMD8<Int16>) {
        self = withUnsafePointer(to: simd, { $0.withMemoryRebound(to: UInt128.self, capacity: 1, { $0.pointee })})
    }
    init(_ simd: SIMD16<Int8>) {
        self = withUnsafePointer(to: simd, { $0.withMemoryRebound(to: UInt128.self, capacity: 1, { $0.pointee })})
    }

    init(_ simd: SIMD2<UInt64>) {
        self = withUnsafePointer(to: simd, { $0.withMemoryRebound(to: UInt128.self, capacity: 1, { $0.pointee })})
    }
    init(_ simd: SIMD4<UInt32>) {
        self = withUnsafePointer(to: simd, { $0.withMemoryRebound(to: UInt128.self, capacity: 1, { $0.pointee })})
    }
    init(_ simd: SIMD8<UInt16>) {
        self = withUnsafePointer(to: simd, { $0.withMemoryRebound(to: UInt128.self, capacity: 1, { $0.pointee })})
    }
    init(_ simd: SIMD16<UInt8>) {
        self = withUnsafePointer(to: simd, { $0.withMemoryRebound(to: UInt128.self, capacity: 1, { $0.pointee })})
    }
}