//
//  SIMD2+SSSE3+128i.swift
//
//
//  Created by Evan Anderson on 12/19/24.
//

#if arch(x86_64) && canImport(_Builtin_intrinsics.intel) && SSSE3

// MARK: Absolute value
public extension SIMD2 where Scalar == Int64 {
    /// Compute the absolute value of packed signed 8-bit integers.
    @inlinable
    mutating func abs8() {
        self = _mm_abs_epi8(self)
    }

    /// Compute the absolute value of packed signed 16-bit integers.
    @inlinable
    mutating func abs16() {
        self = _mm_abs_epi16(self)
    }

    /// Compute the absolute value of packed signed 32-bit integers.
    @inlinable
    mutating func abs32() {
        self = _mm_abs_epi32(self)
    }

    /// Compute the absolute value of packed signed 64-bit integers.
    @inlinable
    mutating func abs64() {
        self = _mm_abs_epi64(self)
    }
}

#endif