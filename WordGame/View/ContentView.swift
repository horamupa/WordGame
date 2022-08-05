//
//  ContentView.swift
//  WordGame
//
//  Created by MM on 25.07.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var isShowedGame = false
    
    @State private var longWord: String = ""
    @State private var name1: String = ""
    @State private var name2: String = ""
    
    var body: some View {
        
        VStack(spacing: 20) {
            
            VStack {
                TitleText(text: "Игра в слова")
            }.padding()
            
            GameTextField(placeholder: "Введите длинное слово...", name1: $longWord)
            GameTextField(placeholder: "Имя первого игрока", name1: $name1)
            GameTextField(placeholder: "Имя второго игрока", name1: $name2)
            
            Button {
                isShowedGame.toggle()
            } label: {
                Text("Начать")
                    .padding()
                    .padding(.horizontal, 60)
                    .foregroundColor(.white)
                    .font(.title2.bold())
                    .background(Color("coolBrown"))
                    .cornerRadius(16)
            }
            .padding()

        }
        .padding(.horizontal, 30)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            Image("BG3")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
        )
        .fullScreenCover(isPresented: $isShowedGame) {
            GameView()
        }
    }
}
    
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
