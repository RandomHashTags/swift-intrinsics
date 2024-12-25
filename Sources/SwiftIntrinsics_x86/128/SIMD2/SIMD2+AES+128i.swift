//
//  SIMD2+AES+128i.swift
//
//
//  Created by Evan Anderson on 12/19/24.
//

#if canImport(_Builtin_intrinsics.intel.aes_pclmul) && AES

@_exported import _Builtin_intrinsics.intel.aes_pclmul

// MARK: AES Decryption
public extension SIMD2 where Scalar == Int64 {
    /// Perform one round of an AES decryption flow using a round key.
    @inlinable
    mutating func aesDecrypt(roundKey: Self) {
        self = _mm_aesdec_si128(self, roundKey)
    }

    /// Perform the last round of an AES decryption flow using a round key.
    @inlinable
    mutating func aesDecryptLast(roundKey: Self) {
        self = _mm_aesdeclast_si128(self, roundKey)
    }
}

// MARK: AES Encryption
public extension SIMD2 where Scalar == Int64 {
    /// Perform one round of an AES encryption flow using a round key.
    @inlinable
    mutating func aesEncrypt(roundKey: Self) {
        self = _mm_aesenc_si128(self, roundKey)
    }

    /// Perform the last round of an AES encryption flow using a round key.
    @inlinable
    mutating func aesEncryptLast(roundKey: Self) {
        self = _mm_aesenclast_si128(self, roundKey)
    }
}

// MARK: AES IMC
public extension SIMD2 where Scalar == Int64 {
    /// Perform the InvMixColumns transformation.
    @inlinable
    mutating func aesInvMixColumns() {
        self = _mm_aesimc_si128(self)
    }
}

// MARK: AES KeyGenAssist
/*
public extension SIMD2 where Scalar == Int64 { // TODO: INSTRUCTION DOESN'T EXIST! WTF!
    @inlinable
    mutating func aesKeyGenAssist(imm8: Int32) {
    }
}*/

#endif