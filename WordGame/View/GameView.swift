//
//  GameView.swift
//  WordGame
//
//  Created by MM on 05.08.2022.
//

import SwiftUI

struct GameView: View {
    
    @State private var answer: String = ""
    
    var body: some View {
        VStack(spacing: 25) {
            HStack {
                Spacer()
                Button {
                    print("Exit")
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
            
            Text("ДлинноеСлово")
                .font(.custom(mainFont, size: 30))
                .foregroundColor(.white)
            
            HStack(spacing: 12) {
               
                VStack {
                    Text("0")
                        .font(.custom(mainFont, size: 60))
                    Text("Vasya")
                }
                .padding(20)
                .frame(width: screen.width / 2.2, height: screen.width / 2.2)
                .background(Color("coolBrown"))
                .cornerRadius(16)
                .shadow(color: .white, radius: 10)
                
                VStack {
                    Text("0")
                        .font(.custom(mainFont, size: 60))
                    Text("Petya")
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
                self.answer = ""
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
        GameView()
    }
}
