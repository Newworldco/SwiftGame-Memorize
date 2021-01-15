 //
//  ContentView.swift
//  Memorize
//
//  Created by Stoner-1 on 2020/11/3.
//

import SwiftUI

 //ContentView 是一个 View,也是屏幕边框
struct ContentView: View {
    var viewModel: EmojiMemoryGame
    
    //body 是属性
    //some View 表现的像 View
    //HStack,视图是水平排列
    var body: some View {
        HStack {
            ForEach(viewModel.cards) {card in
                CardView(card: card).onTapGesture(perform: {
                    viewModel.choose(card: card)
                })
                
            }
        }

            .padding()
            .foregroundColor(Color.orange)
            .font(Font.largeTitle)
            

    }
}

 
 struct CardView: View {
    var card: MemoryGame<String>.Card
    
    var body: some View{
        //ZStack,视图是叠加在一起的
        ZStack {
            if card.isFaceUp{
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text(card.content)
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        }
    }
 }
 
 
 
 
 
 
 //作用：将代码预览
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: EmojiMemoryGame())
    }
}
