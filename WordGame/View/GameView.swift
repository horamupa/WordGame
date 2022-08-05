//
//  GameView.swift
//  WordGame
//
//  Created by MM on 05.08.2022.
//

import SwiftUI

struct GameView: View {
    
    @State private var answer: String = ""
    
    var viewModel: GameViewModel
    
    var body: some View {
        VStack(spacing: 25) {
            HStack {
                Spacer()
                Button {
                    print("Exit")
//                    let view1 = ContentView()
//                    view1.isShowedGame = false
                    
                } label: {
                    Text("Выход")
                        .padding(6)
                        .padding(.horizontal)
                        .background(Color("coolBrown"))
                        .foregroundColor(.white)
                        .cornerRadius(16)
                        .padding(6)
                        .font(.custom("AvenirNext-Bold", size: 18))
                }
                
            }.padding()
            
            Text(viewModel.word)
                .font(.custom(mainFont, size: 30))
                .foregroundColor(.white)
            
            HStack(spacing: 12) {
               
                VStack {
                    Text("\(viewModel.player1.score)")
                        .font(.custom(mainFont, size: 60))
                    Text(viewModel.player1.name)
                }
                .padding(20)
                .frame(width: screen.width / 2.2, height: screen.width / 2.2)
                .background(Color("coolBrown"))
                .cornerRadius(16)
                .shadow(color: .white, radius: 10)
                
                VStack {
                    Text("\(viewModel.player2.score)")
                        .font(.custom(mainFont, size: 60))
                    Text(viewModel.player2.name)
                }
                .padding(20)
                .frame(width: screen.width / 2.2, height: screen.width / 2.2)
                .background(Color("coolGreen"))
                .cornerRadius(16)
                .shadow(color: .white, radius: 10)
            }
            .font(.custom(mainFont, size: 24))
            .foregroundColor(.white)
            
            GameTextField(placeholder: "Ваше слово...", name1: $answer)
                .padding(.horizontal)
                
            Button {
                print("Go")
                let score = viewModel.check(word: answer)
                if score > 0 {
                    self.answer = ""
                }
                
                
            } label: {
                Text("Готово")
                    
                    .frame(maxWidth: .infinity, minHeight: 60)
                    .foregroundColor(.white)
                    .font(.custom(mainFont, size: 26))
                    .background(Color("coolLightBrown"))
                    .cornerRadius(16)
                    .padding(.horizontal)
            }

            
            List {
                
            }
            .listStyle(.plain)
//            .padding()
            .background(Color("alphaWhite"))
            .cornerRadius(16)
            .padding()
            
            
            
            Spacer()
            
        }
        
//        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Image("BG3")
            .resizable()
            .scaledToFill()
            .ignoresSafeArea())
        
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView(viewModel: GameViewModel(player1: Player(name: "Вася"), player2: Player(name: "Петя"), word: "Проститутошная"))
    }
}
