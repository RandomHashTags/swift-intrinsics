//
//  main.swift
//
//
//  Created by Evan Anderson on 12/20/24.
//

import PackagePlugin

@main
struct SwiftIntrinsicsPlugin : BuildToolPlugin {
    func createBuildCommands(context: PluginContext, target: Target) async throws -> [Command] {
        return []
    }
}