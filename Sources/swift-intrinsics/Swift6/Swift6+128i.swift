//
//  Swift6+128i.swift
//
//
//  Created by Evan Anderson on 12/19/24.
//

#if compiler(>=6.0)

// MARK: Shift SIMD2
@available(macOS 15.0, iOS 18.0, watchOS 11.0, tvOS 18.0, visionOS 2.0, *)
public extension SIMD2 where Scalar == Int64 {
    /// Shift left by a number of bits while shifting in zeros.
    @inlinable
    static func << <T: BinaryInteger>(left: Self, bits: T) -> Self {
        return withUnsafePointer(to: left, {
            var int:UInt128 = $0.withMemoryRebound(to: UInt128.self, capacity: 1, { $0.pointee })
            int <<= bits
            return withUnsafePointer(to: &int, { $0.withMemoryRebound(to: Self.self, capacity: 1, { $0.pointee })})
        })
    }
    
    /// Shift left by a number of bits while shifting in zeros.
    @inlinable
    static func <<= <T: BinaryInteger>(left: inout Self, bits: T) {
        left = left << bits
    }

    /// Shift right by a number of bits while shifting in zeros.
    @inlinable
    static func >> <T: BinaryInteger>(left: Self, bits: T) -> Self {
        return withUnsafePointer(to: left, {
            var int:UInt128 = $0.withMemoryRebound(to: UInt128.self, capacity: 1, { $0.pointee })
            int >>= bits
            return withUnsafePointer(to: &int, { $0.withMemoryRebound(to: Self.self, capacity: 1, { $0.pointee })})
        })
    }

    /// Shift right by a number of bits while shifting in zeros.
    @inlinable
    static func >>= <T: BinaryInteger>(left: inout Self, bits: T) {
        left = left >> bits
    }
}
@available(macOS 15.0, iOS 18.0, watchOS 11.0, tvOS 18.0, visionOS 2.0, *)
public extension SIMD2 where Scalar == UInt64 {
    /// Shift left by a number of bits while shifting in zeros.
    @inlinable
    static func << <T: BinaryInteger>(left: Self, bits: T) -> Self {
        return withUnsafePointer(to: left, {
            var int:UInt128 = $0.withMemoryRebound(to: UInt128.self, capacity: 1, { $0.pointee })
            int <<= bits
            return withUnsafePointer(to: &int, { $0.withMemoryRebound(to: Self.self, capacity: 1, { $0.pointee })})
        })
    }
    
    /// Shift left by a number of bits while shifting in zeros.
    @inlinable
    static func <<= <T: BinaryInteger>(left: inout Self, bits: T) {
        left = left << bits
    }

    /// Shift right by a number of bits while shifting in zeros.
    @inlinable
    static func >> <T: BinaryInteger>(left: Self, bits: T) -> Self {
        return withUnsafePointer(to: left, {
            var int:UInt128 = $0.withMemoryRebound(to: UInt128.self, capacity: 1, { $0.pointee })
            int >>= bits
            return withUnsafePointer(to: &int, { $0.withMemoryRebound(to: Self.self, capacity: 1, { $0.pointee })})
        })
    }

    /// Shift right by a number of bits while shifting in zeros.
    @inlinable
    static func >>= <T: BinaryInteger>(left: inout Self, bits: T) {
        left = left >> bits
    }
}

// MARK: Shift SIMD4
@available(macOS 15.0, iOS 18.0, watchOS 11.0, tvOS 18.0, visionOS 2.0, *)
public extension SIMD4 where Scalar == Int32 {
    /// Shift left by a number of bits while shifting in zeros.
    @inlinable
    static func << <T: BinaryInteger>(left: Self, bits: T) -> Self {
        return withUnsafePointer(to: left, {
            var int:UInt128 = $0.withMemoryRebound(to: UInt128.self, capacity: 1, { $0.pointee })
            int <<= bits
            return withUnsafePointer(to: &int, { $0.withMemoryRebound(to: Self.self, capacity: 1, { $0.pointee })})
        })
    }
    
    /// Shift left by a number of bits while shifting in zeros.
    @inlinable
    static func <<= <T: BinaryInteger>(left: inout Self, bits: T) {
        left = left << bits
    }

    /// Shift right by a number of bits while shifting in zeros.
    @inlinable
    static func >> <T: BinaryInteger>(left: Self, bits: T) -> Self {
        return withUnsafePointer(to: left, {
            var int:UInt128 = $0.withMemoryRebound(to: UInt128.self, capacity: 1, { $0.pointee })
            int >>= bits
            return withUnsafePointer(to: &int, { $0.withMemoryRebound(to: Self.self, capacity: 1, { $0.pointee })})
        })
    }

    /// Shift right by a number of bits while shifting in zeros.
    @inlinable
    static func >>= <T: BinaryInteger>(left: inout Self, bits: T) {
        left = left >> bits
    }
}
@available(macOS 15.0, iOS 18.0, watchOS 11.0, tvOS 18.0, visionOS 2.0, *)
public extension SIMD4 where Scalar == UInt32 {
    /// Shift left by a number of bits while shifting in zeros.
    @inlinable
    static func << <T: BinaryInteger>(left: Self, bits: T) -> Self {
        return withUnsafePointer(to: left, {
            var int:UInt128 = $0.withMemoryRebound(to: UInt128.self, capacity: 1, { $0.pointee })
            int <<= bits
            return withUnsafePointer(to: &int, { $0.withMemoryRebound(to: Self.self, capacity: 1, { $0.pointee })})
        })
    }
    
    /// Shift left by a number of bits while shifting in zeros.
    @inlinable
    static func <<= <T: BinaryInteger>(left: inout Self, bits: T) {
        left = left << bits
    }

    /// Shift right by a number of bits while shifting in zeros.
    @inlinable
    static func >> <T: BinaryInteger>(left: Self, bits: T) -> Self {
        return withUnsafePointer(to: left, {
            var int:UInt128 = $0.withMemoryRebound(to: UInt128.self, capacity: 1, { $0.pointee })
            int >>= bits
            return withUnsafePointer(to: &int, { $0.withMemoryRebound(to: Self.self, capacity: 1, { $0.pointee })})
        })
    }

    /// Shift right by a number of bits while shifting in zeros.
    @inlinable
    static func >>= <T: BinaryInteger>(left: inout Self, bits: T) {
        left = left >> bits
    }
}

// MARK: Shift SIMD8
@available(macOS 15.0, iOS 18.0, watchOS 11.0, tvOS 18.0, visionOS 2.0, *)
public extension SIMD8 where Scalar == Int16 {
    /// Shift left by a number of bits while shifting in zeros.
    @inlinable
    static func << <T: BinaryInteger>(left: Self, bits: T) -> Self {
        return withUnsafePointer(to: left, {
            var int:UInt128 = $0.withMemoryRebound(to: UInt128.self, capacity: 1, { $0.pointee })
            int <<= bits
            return withUnsafePointer(to: &int, { $0.withMemoryRebound(to: Self.self, capacity: 1, { $0.pointee })})
        })
    }
    
    /// Shift left by a number of bits while shifting in zeros.
    @inlinable
    static func <<= <T: BinaryInteger>(left: inout Self, bits: T) {
        left = left << bits
    }

    /// Shift right by a number of bits while shifting in zeros.
    @inlinable
    static func >> <T: BinaryInteger>(left: Self, bits: T) -> Self {
        return withUnsafePointer(to: left, {
            var int:UInt128 = $0.withMemoryRebound(to: UInt128.self, capacity: 1, { $0.pointee })
            int >>= bits
            return withUnsafePointer(to: &int, { $0.withMemoryRebound(to: Self.self, capacity: 1, { $0.pointee })})
        })
    }

    /// Shift right by a number of bits while shifting in zeros.
    @inlinable
    static func >>= <T: BinaryInteger>(left: inout Self, bits: T) {
        left = left >> bits
    }
}
@available(macOS 15.0, iOS 18.0, watchOS 11.0, tvOS 18.0, visionOS 2.0, *)
public extension SIMD8 where Scalar == UInt16 {
    /// Shift left by a number of bits while shifting in zeros.
    @inlinable
    static func << <T: BinaryInteger>(left: Self, bits: T) -> Self {
        return withUnsafePointer(to: left, {
            var int:UInt128 = $0.withMemoryRebound(to: UInt128.self, capacity: 1, { $0.pointee })
            int <<= bits
            return withUnsafePointer(to: &int, { $0.withMemoryRebound(to: Self.self, capacity: 1, { $0.pointee })})
        })
    }
    
    /// Shift left by a number of bits while shifting in zeros.
    @inlinable
    static func <<= <T: BinaryInteger>(left: inout Self, bits: T) {
        left = left << bits
    }

    /// Shift right by a number of bits while shifting in zeros.
    @inlinable
    static func >> <T: BinaryInteger>(left: Self, bits: T) -> Self {
        return withUnsafePointer(to: left, {
            var int:UInt128 = $0.withMemoryRebound(to: UInt128.self, capacity: 1, { $0.pointee })
            int >>= bits
            return withUnsafePointer(to: &int, { $0.withMemoryRebound(to: Self.self, capacity: 1, { $0.pointee })})
        })
    }

    /// Shift right by a number of bits while shifting in zeros.
    @inlinable
    static func >>= <T: BinaryInteger>(left: inout Self, bits: T) {
        left = left >> bits
    }
}

// MARK: Shift SIMD16
@available(macOS 15.0, iOS 18.0, watchOS 11.0, tvOS 18.0, visionOS 2.0, *)
public extension SIMD16 where Scalar == Int8 {
    /// Shift left by a number of bits while shifting in zeros.
    @inlinable
    static func << <T: BinaryInteger>(left: Self, bits: T) -> Self {
        return withUnsafePointer(to: left, {
            var int:UInt128 = $0.withMemoryRebound(to: UInt128.self, capacity: 1, { $0.pointee })
            int <<= bits
            return withUnsafePointer(to: &int, { $0.withMemoryRebound(to: Self.self, capacity: 1, { $0.pointee })})
        })
    }
    
    /// Shift left by a number of bits while shifting in zeros.
    @inlinable
    static func <<= <T: BinaryInteger>(left: inout Self, bits: T) {
        left = left << bits
    }

    /// Shift right by a number of bits while shifting in zeros.
    @inlinable
    static func >> <T: BinaryInteger>(left: Self, bits: T) -> Self {
        return withUnsafePointer(to: left, {
            var int:UInt128 = $0.withMemoryRebound(to: UInt128.self, capacity: 1, { $0.pointee })
            int >>= bits
            return withUnsafePointer(to: &int, { $0.withMemoryRebound(to: Self.self, capacity: 1, { $0.pointee })})
        })
    }

    /// Shift right by a number of bits while shifting in zeros.
    @inlinable
    static func >>= <T: BinaryInteger>(left: inout Self, bits: T) {
        left = left >> bits
    }
}
@available(macOS 15.0, iOS 18.0, watchOS 11.0, tvOS 18.0, visionOS 2.0, *)
public extension SIMD16 where Scalar == UInt8 {
    /// Shift left by a number of bits while shifting in zeros.
    @inlinable
    static func << <T: BinaryInteger>(left: Self, bits: T) -> Self {
        return withUnsafePointer(to: left, {
            var int:UInt128 = $0.withMemoryRebound(to: UInt128.self, capacity: 1, { $0.pointee })
            int <<= bits
            return withUnsafePointer(to: &int, { $0.withMemoryRebound(to: Self.self, capacity: 1, { $0.pointee })})
        })
    }
    
    /// Shift left by a number of bits while shifting in zeros.
    @inlinable
    static func <<= <T: BinaryInteger>(left: inout Self, bits: T) {
        left = left << bits
    }

    /// Shift right by a number of bits while shifting in zeros.
    @inlinable
    static func >> <T: BinaryInteger>(left: Self, bits: T) -> Self {
        return withUnsafePointer(to: left, {
            var int:UInt128 = $0.withMemoryRebound(to: UInt128.self, capacity: 1, { $0.pointee })
            int >>= bits
            return withUnsafePointer(to: &int, { $0.withMemoryRebound(to: Self.self, capacity: 1, { $0.pointee })})
        })
    }

    /// Shift right by a number of bits while shifting in zeros.
    @inlinable
    static func >>= <T: BinaryInteger>(left: inout Self, bits: T) {
        left = left >> bits
    }
}

// MARK: Init SIMD2
@available(macOS 15.0, iOS 18.0, watchOS 11.0, tvOS 18.0, visionOS 2.0, *)
public extension SIMD2 where Scalar == Int64 {
    init(_ storage: Int128) {
        self = withUnsafePointer(to: storage, { $0.withMemoryRebound(to: Self.self, capacity: 1, { $0.pointee })})
    }
    init(_ storage: UInt128) {
        self = withUnsafePointer(to: storage, { $0.withMemoryRebound(to: Self.self, capacity: 1, { $0.pointee })})
    }
}
@available(macOS 15.0, iOS 18.0, watchOS 11.0, tvOS 18.0, visionOS 2.0, *)
public extension SIMD2 where Scalar == UInt64 {
    init(_ storage: Int128) {
        self = withUnsafePointer(to: storage, { $0.withMemoryRebound(to: Self.self, capacity: 1, { $0.pointee })})
    }
    init(_ storage: UInt128) {
        self = withUnsafePointer(to: storage, { $0.withMemoryRebound(to: Self.self, capacity: 1, { $0.pointee })})
    }
}
// MARK: Init SIMD4
@available(macOS 15.0, iOS 18.0, watchOS 11.0, tvOS 18.0, visionOS 2.0, *)
public extension SIMD4 where Scalar == Int32 {
    init(_ storage: Int128) {
        self = withUnsafePointer(to: storage, { $0.withMemoryRebound(to: Self.self, capacity: 1, { $0.pointee })})
    }
    init(_ storage: UInt128) {
        self = withUnsafePointer(to: storage, { $0.withMemoryRebound(to: Self.self, capacity: 1, { $0.pointee })})
    }
}
@available(macOS 15.0, iOS 18.0, watchOS 11.0, tvOS 18.0, visionOS 2.0, *)
public extension SIMD4 where Scalar == UInt32 {
    init(_ storage: Int128) {
        self = withUnsafePointer(to: storage, { $0.withMemoryRebound(to: Self.self, capacity: 1, { $0.pointee })})
    }
    init(_ storage: UInt128) {
        self = withUnsafePointer(to: storage, { $0.withMemoryRebound(to: Self.self, capacity: 1, { $0.pointee })})
    }
}
// MARK: Init SIMD8
@available(macOS 15.0, iOS 18.0, watchOS 11.0, tvOS 18.0, visionOS 2.0, *)
public extension SIMD8 where Scalar == Int16 {
    init(_ storage: Int128) {
        self = withUnsafePointer(to: storage, { $0.withMemoryRebound(to: Self.self, capacity: 1, { $0.pointee })})
    }
    init(_ storage: UInt128) {
        self = withUnsafePointer(to: storage, { $0.withMemoryRebound(to: Self.self, capacity: 1, { $0.pointee })})
    }
}
@available(macOS 15.0, iOS 18.0, watchOS 11.0, tvOS 18.0, visionOS 2.0, *)
public extension SIMD8 where Scalar == UInt16 {
    init(_ storage: Int128) {
        self = withUnsafePointer(to: storage, { $0.withMemoryRebound(to: Self.self, capacity: 1, { $0.pointee })})
    }
    init(_ storage: UInt128) {
        self = withUnsafePointer(to: storage, { $0.withMemoryRebound(to: Self.self, capacity: 1, { $0.pointee })})
    }
}
// MARK: Init SIMD16
@available(macOS 15.0, iOS 18.0, watchOS 11.0, tvOS 18.0, visionOS 2.0, *)
public extension SIMD16 where Scalar == Int8 {
    init(_ storage: Int128) {
        self = withUnsafePointer(to: storage, { $0.withMemoryRebound(to: Self.self, capacity: 1, { $0.pointee })})
    }
    init(_ storage: UInt128) {
        self = withUnsafePointer(to: storage, { $0.withMemoryRebound(to: Self.self, capacity: 1, { $0.pointee })})
    }
}
@available(macOS 15.0, iOS 18.0, watchOS 11.0, tvOS 18.0, visionOS 2.0, *)
public extension SIMD16 where Scalar == UInt8 {
    init(_ storage: Int128) {
        self = withUnsafePointer(to: storage, { $0.withMemoryRebound(to: Self.self, capacity: 1, { $0.pointee })})
    }
    init(_ storage: UInt128) {
        self = withUnsafePointer(to: storage, { $0.withMemoryRebound(to: Self.self, capacity: 1, { $0.pointee })})
    }
}

#endif