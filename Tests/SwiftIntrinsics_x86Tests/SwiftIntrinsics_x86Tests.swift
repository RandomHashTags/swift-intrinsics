//
//  SwiftIntrinsics_x86Tests.swift
//
//
//  Created by Evan Anderson on 12/17/24.
//

#if arch(x86_64) && canImport(_Builtin_intrinsics.intel) && compiler(>=6.0)

import Testing
import SwiftIntrinsics_x86

struct SwiftIntrinsics_x86Tests {
    @Test func x86_128i_bitshift() {
        guard #available(macOS 15.0, iOS 18.0, watchOS 11.0, tvOS 18.0, visionOS 2.0, *) else { return }
        let huge:UInt128 = 18446744073709551615
        #expect(String(huge, radix: 2) == "1111111111111111111111111111111111111111111111111111111111111111")

        var simd2:SIMD2<Int64> = .init(huge)
        simd2 <<= 1
        #expect(String(UInt128(simd2), radix: 2) == "11111111111111111111111111111111111111111111111111111111111111110")
        #expect(UInt128(simd2) == 36893488147419103230)
        
        simd2 <<= 63
        #expect(String(UInt128(simd2), radix: 2) == "11111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000000000000000000000000000000000000")

        simd2 <<= 1
        #expect(String(UInt128(simd2), radix: 2) == "11111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000")

        simd2 >>= 3
        #expect(String(UInt128(simd2), radix: 2) == "11111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000000000000000000000000000000")

        var simd4:SIMD4<Int32> = .init(huge)
        simd4 <<= 1
        #expect(UInt128(simd4) == 36893488147419103230)

        var simd8:SIMD8<Int16> = .init(huge)
        simd8 <<= 1
        #expect(UInt128(simd8) == 36893488147419103230)

        var simd16:SIMD16<Int8> = .init(huge)
        simd16 <<= 1
        #expect(UInt128(simd16) == 36893488147419103230)
    }
}


#endif