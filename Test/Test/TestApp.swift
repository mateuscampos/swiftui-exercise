//
//  TestApp.swift
//  Test
//
//  Created by Mateus de Campos on 28/06/23.
//

import SwiftUI

@main
struct TestApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: ContentViewModel())
        }
    }
}
