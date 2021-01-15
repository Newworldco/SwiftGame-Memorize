//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Stoner-1 on 2021/1/14.
//

import Foundation

class EmojiMemoryGame {
    private(set) var model: MemoryGame<String> = EmojiMemoryGame.creatMemoryGame()
        
   static func creatMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["👻","🎃","🕷"]
    return MemoryGame<String>(numberOfPairsOfCards: emojis.count, cardContentFactory: { (pairIndex: Int) -> String in
            return emojis[pairIndex]
        })
    }
    
    //MARK: - 存取Model
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    
    //MARK: -Intent(s)
    
    func choose(card:MemoryGame<String>.Card){
        model.choose(card: card)
    }
}
