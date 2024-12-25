//
//  SSE4.1+128iTests.swift
//
//
//  Created by Evan Anderson on 12/19/24.
//

#if compiler(>=6.0) && canImport(_Builtin_intrinsics.intel.sse4_1) && SSE4_1

import Testing

struct SSE4_1_128iTests {
    @Test func sse4_1_128i() {
    }
}

#endif