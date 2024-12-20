//
//  SwiftIntrinsics.swift
//
//
//  Created by Evan Anderson on 12/17/24.
//

#if arch(x86_64) && canImport(_Builtin_intrinsics.intel)
@_exported import _Builtin_intrinsics.intel
#endif

#if compiler(>=6.0)
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