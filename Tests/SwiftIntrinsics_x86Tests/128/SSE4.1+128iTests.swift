//
//  SSE4.1+128iTests.swift
//
//
//  Created by Evan Anderson on 12/19/24.
//

#if arch(x86_64) && canImport(_Builtin_intrinsics.intel) && SSE4_1

struct SSE4_1_128iTests {
    @Test func sse4_1_128i() {
    }
}

#endif