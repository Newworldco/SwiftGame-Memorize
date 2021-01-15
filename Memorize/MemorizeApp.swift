//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Stoner-1 on 2020/11/3.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
