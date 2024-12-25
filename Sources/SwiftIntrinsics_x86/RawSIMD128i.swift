//
//  RawSIMD512i.swift
//
//
//  Created by Evan Anderson on 12/17/24.
//

#if canImport(_Builtin_intrinsics.intel)

// MARK: Carry-less Multiplication
/*
public extension SIMD2 where Scalar == Int64 { // TODO: INSTRUCTION DOESN'T EXIST! WTF!
    @inlinable
    mutating func carrylessMultiply(_ b: Self, imm8: Int32) {
    }
}*/

// MARK: Extract
public extension SIMD2 where Scalar == Int64 { // TODO: MISSING INSTRUCTIONS! WTF!
}

#if SM3 && AVX
// MARK: SM3
public extension SIMD2 where Scalar == Int64 {
    /// Perform calculation for the next four SM3 message words
    @inlinable
    mutating func sm3msg1(b: Self, c: Self) {
        self = _mm_sm3msg1_epi32(self, b, c)
    }

    /// Performs the final calculation for the next four SM3 message words
    @inlinable
    mutating func sm3msg2(b: Self, c: Self) {
        self = _mm_sm3msg2_epi32(self, b, c)
    }

    /*/// Perform two rounds of SM3 operation
    @inlinable
    mutating func sm3rnds2(b: Self, c: Self, imm8: Int32) { // TODO: INSTRUCTION DOESN'T EXIST! WTF!
        self = _mm_sm3rnds2_epi32(self, b, c)
    }*/
}

#endif

#if SM4 && AVX
// MARK: SM4
public extension SIMD2 where Scalar == Int64 {
    /// Perform four rounds of SM4 key expansion (operates on independent 128-bit lanes)
    /*@inlinable
    mutating func sm4Key4(b: Self) { // TODO: INSTRUCTION DOESN'T EXIST! WTF!
        self = _mm_sm4key4_epi32(self, b)
    }*/
    
    /// Performs four rounds of SM4 encryption (operates on independent 128-bit lanes)
    /*@inlinable
    mutating func sm4rnds4(b: Self) { // TODO: INSTRUCTION DOESN'T EXIST! WTF!
        self = _mm_sm4rnds4_epi32(self, b)
    }*/
}
#endif

// MARK: Rotate 
/*
public extension SIMD2 where Scalar == Int64 {
    /// Rotate the bits in each packed 32-bit integer to the left by a number of bits
    @inlinable
    mutating func rotateLeft(by bits: Int) { // TODO: INSTRUCTION DOESN'T EXIST! WTF!
        self = _mm_rol_epi32(self, right)
    }
}*/

#endif