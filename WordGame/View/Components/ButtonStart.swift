//
//  ButtonStart.swift
//  WordGame
//
//  Created by MM on 05.08.2022.
//

import SwiftUI

struct ButtonStart: View {
    
    var body: some View {
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
    }
}

struct ButtonStart_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStart()
    }
}
