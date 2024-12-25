//
//  SIMD2+AVX2+128i.swift
//
//
//  Created by Evan Anderson on 12/19/24.
//

#if canImport(_Builtin_intrinsics.intel.avx2) && AVX2

@_exported import _Builtin_intrinsics.intel.avx2

// MARK: Broadcast
public extension SIMD2 where Scalar == Int64 {
    /// Broadcast the low packed 8-bit integers.
    @inlinable
    mutating func broadcast8() {
        self = _mm_broadcastb_epi8(self)
    }

    /// Broadcast the low packed 16-bit integers.
    @inlinable
    mutating func broadcast16() {
        self = _mm_broadcastw_epi16(self)
    }

    /// Broadcast the low packed 32-bit integers.
    @inlinable
    mutating func broadcast32() {
        self = _mm_broadcastd_epi32(self)
    }

    /// Broadcast the low packed 64-bit integers.
    @inlinable
    mutating func broadcast64() {
        self = _mm_broadcastq_epi64(self)
    }
}

#endif