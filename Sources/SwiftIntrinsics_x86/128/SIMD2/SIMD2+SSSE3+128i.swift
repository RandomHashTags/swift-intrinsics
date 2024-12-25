//
//  SIMD2+SSSE3+128i.swift
//
//
//  Created by Evan Anderson on 12/19/24.
//

#if canImport(_Builtin_intrinsics.intel.ssse3) && SSSE3

@_exported import _Builtin_intrinsics.intel.ssse3

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

// MARK: Shuffle
public extension SIMD2 where Scalar == Int64 {
    /*/// Shuffle 8-bit integers using the control.
    @inlinable
    mutating func shuffle8(imm8: Int32) { // TODO: INSTRUCTION DOESN'T EXIST! WTF!
        self = _mm_shuffle_epi8(self, imm8)
    }*/

    /// Shuffle packed 8-bit integers according to shuffle control mask.
    @inlinable
    mutating func shuffle8(mask: Self) {
        self = _mm_shuffle_epi8(self, mask)
    }

    /// Shuffle 8-bit integers using the corresponding selector and index.
    @inlinable
    mutating func shuffle8(index: Self, b: Self) {
        self = _mm_permutex2var_epi8(self, index, b)
    }
}

#endif