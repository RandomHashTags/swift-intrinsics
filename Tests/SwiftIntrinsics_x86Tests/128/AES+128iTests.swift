//
//  SSE4.1+128iTests.swift
//
//
//  Created by Evan Anderson on 12/19/24.
//

#if compiler(>=6.0) && canImport(_Builtin_intrinsics.intel.aes_pclmul) && AES

import Testing

struct AES_128iTests {
    @Test func aes_128i() {
    }
}

#endif