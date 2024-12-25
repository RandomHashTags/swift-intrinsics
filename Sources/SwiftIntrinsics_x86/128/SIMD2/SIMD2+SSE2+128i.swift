//
//  SIMD2+SSE2+128i.swift
//
//
//  Created by Evan Anderson on 12/19/24.
//

#if canImport(_Builtin_intrinsics.intel.sse2) && SSE2

@_exported import _Builtin_intrinsics.intel.sse2

// MARK: Addition
public extension SIMD2 where Scalar == Int64 {
    /// Add packed 8-bit integers.
    @inlinable
    mutating func add8(_ b: Self) {
        self = _mm_add_epi8(self, b)
    }

    /// Add packed 16-bit integers.
    @inlinable
    mutating func add16(_ b: Self) {
        self = _mm_add_epi16(self, b)
    }

    /// Add packed 32-bit integers.
    @inlinable
    mutating func add32(_ b: Self) {
        self = _mm_add_epi32(self, b)
    }

    /// Add packed 64-bit integers.
    @inlinable
    mutating func add64(_ b: Self) {
        self = _mm_add_epi64(self, b)
    }
}

// MARK: Saturated Addition
public extension SIMD2 where Scalar == Int64 {
    /// Add packed 8-bit integers using saturation.
    @inlinable
    mutating func adds8(_ b: Self) {
        self = _mm_adds_epi8(self, b)
    }

    /// Add packed 16-bit integers using saturation.
    @inlinable
    mutating func adds16(_ b: Self) {
        self = _mm_adds_epi16(self, b)
    }

    /// Add packed unsigned 8-bit integers using saturation.
    @inlinable
    mutating func addsu8(_ b: Self) {
        self = _mm_adds_epu8(self, b)
    }

    /// Add packed unsigned 16-bit integers using saturation.
    @inlinable
    mutating func addsu16(_ b: Self) {
        self = _mm_adds_epu16(self, b)
    }
}

// MARK: Average
public extension SIMD2 where Scalar == Int64 {
    /// Average packed unsigned 8-bit integers.
    @inlinable
    mutating func average8(_ b: Self) {
        self = _mm_avg_epu8(self, b)
    }
    
    /// Average packed unsigned 16-bit integers.
    @inlinable
    mutating func average16(_ b: Self) {
        self = _mm_avg_epu16(self, b)
    }
}

// MARK: Bitwise AND
public extension SIMD2 where Scalar == Int64 {
    /// Compute the bitwise AND of 128 bits (representing integer data).
    @inlinable
    mutating func bitwiseAND(_ b: Self) {
        self = _mm_and_si128(self, b)
    }
}

// MARK: Bitwise NOT
public extension SIMD2 where Scalar == Int64 {
    /// Compute the bitwise NOT of 128 bits (representing integer data).
    @inlinable
    mutating func bitwiseNOT(_ b: Self) {
        self = _mm_andnot_si128(self, b)
    }
}

// MARK: Bitwise OR
public extension SIMD2 where Scalar == Int64 {
    /// Compute the bitwise OR of 128 bits (representing integer data).
    @inlinable
    mutating func bitwiseOR(_ b: Self) {
        self = _mm_or_si128(self, b)
    }
}

// MARK: Bitwise XOR
public extension SIMD2 where Scalar == Int64 {
    /// Compute the bitwise OR of 128 bits (representing integer data).
    @inlinable
    mutating func bitwiseXOR(_ b: Self) {
        self = _mm_xor_si128(self, b)
    }
}

// MARK: Move
public extension SIMD2 where Scalar == Int64 {
    /// Copy the lower 64-bit integer to the lower elements and zero the upper elements.
    @inlinable
    mutating func move() {
        self = _mm_move_epi64(self)
    }
}

// MARK: Shift
public extension SIMD2 where Scalar == Int64 {
    /// Shift left by a number of bytes while shifting in zeros.
    /*@inlinable
    mutating func shiftLeft(byBytes: Int32) { // TODO: INSTRUCTION DOESN'T EXIST! WTF!
        self = _mm_bslli_si128(self, bytes)
    }*/

    /// Shift right by a number of bytes while shifting in zeros.
    /*@inlinable
    mutating func shiftRight(byBytes: Int32) { // TODO: INSTRUCTION DOESN'T EXIST! WTF!
        self = _mm_bsrli_si128(self, bytes)
    }*/
}

// MARK: Subtraction
public extension SIMD2 where Scalar == Int64 {
    /// Subtract packed 8-bit integers.
    @inlinable
    mutating func sub8(_ b: Self) {
        self = _mm_sub_epi8(self, b)
    }

    /// Subtract packed 16-bit integers.
    @inlinable
    mutating func sub16(_ b: Self) {
        self = _mm_sub_epi16(self, b)
    }

    /// Subtract packed 32-bit integers.
    @inlinable
    mutating func sub32(_ b: Self) {
        self = _mm_add_epi32(self, b)
    }

    /// Subtract packed 64-bit integers.
    @inlinable
    mutating func sub64(_ b: Self) {
        self = _mm_add_epi64(self, b)
    }
}

// MARK: Saturated Subtraction
public extension SIMD2 where Scalar == Int64 {
    /// Subtract packed 8-bit integers using saturation.
    @inlinable
    mutating func subs8(_ b: Self) {
        self = _mm_subs_epi8(self, b)
    }

    /// Subtract packed 16-bit integers using saturation.
    @inlinable
    mutating func subs16(_ b: Self) {
        self = _mm_subs_epi16(self, b)
    }

    /// Subtract packed unsigned 8-bit integers using saturation.
    @inlinable
    mutating func subsu8(_ b: Self) {
        self = _mm_subs_epu8(self, b)
    }

    /// Subtract packed unsigned 16-bit integers using saturation.
    @inlinable
    mutating func subsu16(_ b: Self) {
        self = _mm_subs_epu16(self, b)
    }
}

// MARK: Unpack
public extension SIMD2 where Scalar == Int64 {
    /// Unpack and interleave 8-bit integers from the high half of `self` and `b`.
    @inlinable
    mutating func unpackHigh8(b: Self) {
        self = _mm_unpackhi_epi8(self, b)
    }

    /// Unpack and interleave 16-bit integers from the high half of `self` and `b`.
    @inlinable
    mutating func unpackHigh16(b: Self) {
        self = _mm_unpackhi_epi16(self, b)
    }

    /// Unpack and interleave 32-bit integers from the high half of `self` and `b`.
    @inlinable
    mutating func unpackHigh32(b: Self) {
        self = _mm_unpackhi_epi32(self, b)
    }

    /// Unpack and interleave 64-bit integers from the high half of `self` and `b`.
    @inlinable
    mutating func unpackHigh64(b: Self) {
        self = _mm_unpackhi_epi64(self, b)
    }

    /// Unpack and interleave 8-bit integers from the low half of `self` and `b`.
    @inlinable
    mutating func unpackLow8(b: Self) {
        self = _mm_unpacklo_epi8(self, b)
    }

    /// Unpack and interleave 16-bit integers from the low half of `self` and `b`.
    @inlinable
    mutating func unpackLow16(b: Self) {
        self = _mm_unpacklo_epi16(self, b)
    }

    /// Unpack and interleave 32-bit integers from the low half of `self` and `b`.
    @inlinable
    mutating func unpackLow32(b: Self) {
        self = _mm_unpacklo_epi32(self, b)
    }

    /// Unpack and interleave 64-bit integers from the low half of `self` and `b`.
    @inlinable
    mutating func unpackLow64(b: Self) {
        self = _mm_unpacklo_epi64(self, b)
    }

    /// Unpack and interleave 64-bit integers from the low half of `self` and `b`.
    @inlinable
    func unpackLow64(b: Self) -> Self {
        return _mm_unpacklo_epi64(self, b)
    }
}

#endif