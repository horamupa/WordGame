//
//  TitleText.swift
//  WordGame
//
//  Created by MM on 05.08.2022.
//

import SwiftUI

struct TitleText: View {
    
    @State var text: String = ""
    
    var body: some View {
        
        Text(text)
            .padding()
            .padding(.horizontal, 20)
            .font(.title.bold())
            .foregroundColor(.white)
            .background(Color("coolBrown"))
            .cornerRadius(16)
    }
    
}

struct TitleText_Previews: PreviewProvider {
    static var previews: some View {
        TitleText()
    }
}
