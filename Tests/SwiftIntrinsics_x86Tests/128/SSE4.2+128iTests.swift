//
//  SSE4.2+128iTests.swift
//
//
//  Created by Evan Anderson on 12/24/24.
//

#if compiler(>=6.0) && canImport(_Builtin_intrinsics.intel.sse4_2) && SSE4_2

import Testing

struct SSE4_2_128iTests {
    @Test func sse4_2_128i() {
    }
}

#endif