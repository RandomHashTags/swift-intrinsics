# Swift Intrinsics

<a href="https://swift.org"><img src="https://img.shields.io/badge/Swift-5.9+-F05138?style=&logo=swift" alt="Requires at least Swift 5.9"></a> <img src="https://img.shields.io/badge/Platforms-Any-gold"> <a href="https://discord.com/invite/VyuFQUpcUz"><img src="https://img.shields.io/badge/Chat-Discord-7289DA?style=&logo=discord"></a> <a href="https://github.com/RandomHashTags/destiny/blob/main/LICENSE"><img src="https://img.shields.io/badge/License-Apache_2.0-blue" alt="Apache 2.0 License"></a>

Unlock SIMD intrinsics.

## Table of Contents

- [Extensions](#extensions)
- [Supported CPU flags](#supported-cpu-flags)
- [How to define CPU flags](#how-to-define-cpu-flags)
  - [Examples](#examples)

## Extensions

This library adds extensions to the existing Swift `SIMD<N>` types that use the supported intrinsics.

Some additional extensions are added for convenience without needing to declare CPU flags, including:

- Whole bit shift 128 bits (requires Swift 6)

## Supported CPU flags

Format: `CPU Flag (-Xcc -m<value> | -Xswiftc -D<value>)`

- AES (aes | AES)
- AVX (avx | AVX)
- AVX2 (avx2 | AVX2)
- AVX512 (avx512 | AVX512)
- MMX (mmx | MMX)
- SHA (sha | SHA)
- SM3 (sm3 | SM3)
- SM4 (sm4 | SM4)
- SSE (sse | SSE)
- SSE2 (sse2 | SSE2)
- SSE3 (sse3 | SSE3)
- SSE4.1 (sse4.1 | SSE4_1)
- SSE4.2 (sse4.2 | SSE4_2)
- SSSE3 (ssse3 | SSSE3)

## How to define CPU flags

Both `-Xcc` and `-Xswiftc` are required to compile correctly. This is unavoidable with the current state of Swift.

- `swift <build | run | test> -Xcc -m<flag1> -Xswiftc -D<flag1> -Xcc -m<flag2> -Xswiftc -D<flag2> -Xcc -m<flagN> -Xswiftc -D<flagN>`

### Examples

- SSE4.1 and AVX: `swift build -Xcc -msse4.1 -Xswiftc -DSSE4_1 -Xcc -mavx -Xswiftc -DAVX`
- AVX2: `swift run -Xcc -mavx2 -Xswiftc -DAVX2`
- SHA: `swift test -Xcc -msha -Xswiftc -DSHA`