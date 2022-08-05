//
//  PlayerName.swift
//  WordGame
//
//  Created by MM on 05.08.2022.
//

import SwiftUI

struct GameTextField: View {
    
    @State var placeholder: String = ""
    @State var name1: Binding<String>
    
    var body: some View {
        TextField(placeholder, text: name1)
            .padding()
            .padding(.horizontal, 20)
            .background()
            .frame(maxWidth: 300)
            .cornerRadius(16)
    }
}

//struct PlayerName_Previews: PreviewProvider {
//    static var previews: some View {
//        GameTextField()
//    }
//}
