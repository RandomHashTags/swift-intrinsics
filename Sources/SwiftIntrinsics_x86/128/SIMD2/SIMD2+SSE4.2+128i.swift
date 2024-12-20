//
//  SIMD2+SSE4.2+128i.swift
//
//
//  Created by Evan Anderson on 12/19/24.
//

#if arch(x86_64) && canImport(_Builtin_intrinsics.intel) && SSE4_2

// MARK: String Compare
public extension SIMD2 where Scalar == Int64 {
    /// Compare packed strings
    /// - Returns: `true` if `b` did not contain a null character and the resulting mask was zero, and `false` otherwise
    /*@inlinable
    mutating func compareString(la: Int, b: Self, lb: Int, imm8: Int32) -> Bool { // TODO: INSTRUCTION DOESN'T EXIST! WTF!
        return _mm_cmpestra(self, la, b, lb, imm8) == 1
    }*/
}

#endif