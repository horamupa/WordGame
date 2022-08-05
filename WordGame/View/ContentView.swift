//
//  ContentView.swift
//  WordGame
//
//  Created by MM on 25.07.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var longWord: String = ""
    @State private var name1: String = ""
    @State private var name2: String = ""
    
    var body: some View {
        
        VStack(spacing: 20) {
            
            VStack {
                
                TitleText(text: "Go Fuck Yourself")
                
            }.padding()
            
            GameTextField(placeholder: "Введите длинное слово", name1: $longWord)
            GameTextField(placeholder: "First player name", name1: $name1)
            GameTextField(placeholder: "Second player name", name1: $name2)
            
            Button {
                print("Game Start")
            } label: {
                Text("Start")
                    .padding()
                    .padding(.horizontal, 60)
                    .foregroundColor(.white)
                    .font(.title2.bold())
                    .background(Color("coolBrown"))
                    .cornerRadius(16)
            }
            .padding()

        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            Image("BG2")
                .resizable()
                .ignoresSafeArea()
                .aspectRatio(contentMode: .fill)
            
            
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
