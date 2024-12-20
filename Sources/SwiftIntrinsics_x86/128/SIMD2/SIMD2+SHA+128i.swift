//
//  SIMD2+SHA+128i.swift
//
//
//  Created by Evan Anderson on 12/19/24.
//

#if arch(x86_64) && canImport(_Builtin_intrinsics.intel) && SHA

// MARK: SHA1
public extension SIMD2 where Scalar == Int64 {
    /// Perform an intermediate calculation for the next four SHA1 message values (unsigned 32-bit integers).
    @inlinable
    mutating func sha1msg1(b: Self) {
        self = _mm_sha1msg1_epu32(self, b)
    }

    /// Perform the final calculation for the next four SHA1 message values (unsigned 32-bit integers).
    @inlinable
    mutating func sha1msg2(b: Self) {
        self = _mm_sha1msg2_epu32(self, b)
    }

    /// Calculate SHA1 state variable E after four rounds of operation from the current SHA1 state (unsigned 32-bit integers).
    @inlinable
    mutating func sha1NextE(b: Self) {
        self = _mm_sha1nexte_epu32(self, b)
    }

    /*/// Perform four rounds of SHA1 operation and some pre-computed sum of the next 4 round message values (unsigned 32-bit integers) and variable E from `b`.
    @inlinable
    mutating func sha14Rounds(b: Self, function: Int) { // TODO: INSTRUCTION DOESN'T EXIST! WTF!
    }*/

    /// Perform calculation for the next four SHA256 message values (unsigned 32-bit integers).
    @inlinable
    mutating func sha256msg1(b: Self) {
        self = _mm_sha256msg1_epu32(self, b)
    }

    /// Perform the final calculation for the next four SHA256 message values (unsigned 32-bit integers).
    @inlinable
    mutating func sha256msg2(b: Self) {
        self = _mm_sha256msg2_epu32(self, b)
    }

    /// Perform 2 rounds of SHA256 operation using an initial SHA256 state and a pre-computed sum of the next 2 round message values (unsigned 32-bit integers) and the corresponding round constants.
    @inlinable
    mutating func sha256rnds2(b: Self, constants: Self) {
        self = _mm_sha256rnds2_epu32(self, b, constants)
    }
}

#endif