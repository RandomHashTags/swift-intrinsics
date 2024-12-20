//
//  SSE4.1+128i.swift
//
//
//  Created by Evan Anderson on 12/19/24.
//

#if arch(x86_64) && canImport(_Builtin_intrinsics.intel) && SSE4_1

// MARK: Blend
public extension SIMD2 where Scalar == Int64 {
    /*/// Blend packed 16-bit integers using a control mask.
    @inlinable
    mutating func blend16(_ b: Self, mask: Int) { // TODO: INSTRUCTION DOESN'T EXIST! WTF!
    }*/

    /// Blend packed 8-bit integers using a control mask.
    @inlinable
    mutating func blend8(_ b: Self, mask: Self) {
        self = _mm_blendv_epi8(self, b, mask)
    }
}

// MARK: Max
public extension SIMD2 where Scalar == Int64 {
    /// Compares packed signed 8-bit integers and stores packed maximum values.
    @inlinable
    mutating func max8(_ b: Self) {
        self = _mm_max_epi8(self, b)
    }
    
    /// Compares packed signed 16-bit integers and stores packed maximum values.
    @inlinable
    mutating func max16(_ b: Self) {
        self = _mm_max_epi16(self, b)
    }

    /// Compares packed signed 32-bit integers and stores packed maximum values.
    @inlinable
    mutating func max32(_ b: Self) {
        self = _mm_max_epi32(self, b)
    }

    /// Compares packed signed 64-bit integers and stores packed maximum values.
    @inlinable
    mutating func max64(_ b: Self) {
        self = _mm_max_epi64(self, b)
    }

    /// Compares packed unsigned 8-bit integers and stores packed maximum values.
    @inlinable
    mutating func maxu8(_ b: Self) {
        self = _mm_max_epu8(self, b)
    }
    
    /// Compares packed unsigned 16-bit integers and stores packed maximum values.
    @inlinable
    mutating func maxu16(_ b: Self) {
        self = _mm_max_epu16(self, b)
    }

    /// Compares packed unsigned 32-bit integers and stores packed maximum values.
    @inlinable
    mutating func maxu32(_ b: Self) {
        self = _mm_max_epu32(self, b)
    }

    /// Compares packed unsigned 64-bit integers and stores packed maximum values.
    @inlinable
    mutating func maxu64(_ b: Self) {
        self = _mm_max_epu64(self, b)
    }
}

// MARK: Min
public extension SIMD2 where Scalar == Int64 {
    /// Compares packed signed 8-bit integers and stores packed minimum values.
    @inlinable
    mutating func minx8(_ b: Self) {
        self = _mm_min_epi8(self, b)
    }
    
    /// Compares packed signed 16-bit integers and stores packed minimum values.
    @inlinable
    mutating func min16(_ b: Self) {
        self = _mm_min_epi16(self, b)
    }

    /// Compares packed signed 32-bit integers and stores packed minimum values.
    @inlinable
    mutating func min32(_ b: Self) {
        self = _mm_min_epi32(self, b)
    }

    /// Compares packed signed 64-bit integers and stores packed minimum values.
    @inlinable
    mutating func min64(_ b: Self) {
        self = _mm_min_epi64(self, b)
    }

    /// Compares packed unsigned 8-bit integers and stores packed minimum values.
    @inlinable
    mutating func minu8(_ b: Self) {
        self = _mm_min_epu8(self, b)
    }
    
    /// Compares packed unsigned 16-bit integers and stores packed minimum values.
    @inlinable
    mutating func minu16(_ b: Self) {
        self = _mm_min_epu16(self, b)
    }

    /// Compares packed unsigned 32-bit integers and stores packed minimum values.
    @inlinable
    mutating func minu32(_ b: Self) {
        self = _mm_min_epu32(self, b)
    }

    /// Compares packed unsigned 64-bit integers and stores packed minimum values.
    @inlinable
    mutating func minu64(_ b: Self) {
        self = _mm_min_epu64(self, b)
    }
}

#endif