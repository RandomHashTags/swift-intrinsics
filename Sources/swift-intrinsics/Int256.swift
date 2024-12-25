//
//  Int256.swift
//
//
//  Created by Evan Anderson on 12/20/24.
//

#if compiler(>=6.0)

@available(macOS 15.0, iOS 18.0, watchOS 11.0, tvOS 18.0, visionOS 2.0, *)
struct Int256 {
    var high:Int128
    var low:Int128
}

#endif