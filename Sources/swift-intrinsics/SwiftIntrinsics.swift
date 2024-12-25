//
//  SwiftIntrinsics.swift
//
//
//  Created by Evan Anderson on 12/17/24.
//

#if compiler(>=6.0)

@available(macOS 15.0, iOS 18.0, watchOS 11.0, tvOS 18.0, visionOS 2.0, *)
public extension UInt128 {
    init(_ raw: SIMD2<Int64>) {
        self = withUnsafePointer(to: raw, { $0.withMemoryRebound(to: UInt128.self, capacity: 1, { $0.pointee })})
    }
    init(_ raw: SIMD4<Int32>) {
        self = withUnsafePointer(to: raw, { $0.withMemoryRebound(to: UInt128.self, capacity: 1, { $0.pointee })})
    }
    init(_ raw: SIMD8<Int16>) {
        self = withUnsafePointer(to: raw, { $0.withMemoryRebound(to: UInt128.self, capacity: 1, { $0.pointee })})
    }
    init(_ raw: SIMD16<Int8>) {
        self = withUnsafePointer(to: raw, { $0.withMemoryRebound(to: UInt128.self, capacity: 1, { $0.pointee })})
    }

    init(_ raw: SIMD2<UInt64>) {
        self = withUnsafePointer(to: raw, { $0.withMemoryRebound(to: UInt128.self, capacity: 1, { $0.pointee })})
    }
    init(_ raw: SIMD4<UInt32>) {
        self = withUnsafePointer(to: raw, { $0.withMemoryRebound(to: UInt128.self, capacity: 1, { $0.pointee })})
    }
    init(_ raw: SIMD8<UInt16>) {
        self = withUnsafePointer(to: raw, { $0.withMemoryRebound(to: UInt128.self, capacity: 1, { $0.pointee })})
    }
    init(_ raw: SIMD16<UInt8>) {
        self = withUnsafePointer(to: raw, { $0.withMemoryRebound(to: UInt128.self, capacity: 1, { $0.pointee })})
    }
}

@available(macOS 15.0, iOS 18.0, watchOS 11.0, tvOS 18.0, visionOS 2.0, *)
public extension Int128 {
    init(_ raw: SIMD2<Int64>) {
        self = withUnsafePointer(to: raw, { $0.withMemoryRebound(to: Int128.self, capacity: 1, { $0.pointee })})
    }
    init(_ raw: SIMD4<Int32>) {
        self = withUnsafePointer(to: raw, { $0.withMemoryRebound(to: Int128.self, capacity: 1, { $0.pointee })})
    }
    init(_ raw: SIMD8<Int16>) {
        self = withUnsafePointer(to: raw, { $0.withMemoryRebound(to: Int128.self, capacity: 1, { $0.pointee })})
    }
    init(_ raw: SIMD16<Int8>) {
        self = withUnsafePointer(to: raw, { $0.withMemoryRebound(to: Int128.self, capacity: 1, { $0.pointee })})
    }

    init(_ raw: SIMD2<UInt64>) {
        self = withUnsafePointer(to: raw, { $0.withMemoryRebound(to: Int128.self, capacity: 1, { $0.pointee })})
    }
    init(_ raw: SIMD4<UInt32>) {
        self = withUnsafePointer(to: raw, { $0.withMemoryRebound(to: Int128.self, capacity: 1, { $0.pointee })})
    }
    init(_ raw: SIMD8<UInt16>) {
        self = withUnsafePointer(to: raw, { $0.withMemoryRebound(to: Int128.self, capacity: 1, { $0.pointee })})
    }
    init(_ raw: SIMD16<UInt8>) {
        self = withUnsafePointer(to: raw, { $0.withMemoryRebound(to: Int128.self, capacity: 1, { $0.pointee })})
    }
}

#endif