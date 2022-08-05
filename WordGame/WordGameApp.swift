//
//  WordGameApp.swift
//  WordGame
//
//  Created by MM on 25.07.2022.
//

/* описание

Игра в слова:
Введите длинное слово и по очереди составляйте слова из него, зарабатывая очки.

Построенна по модели MMVM
Вынесены компоненты
Работа со стаками, текстфилдами, арреями, переход между экранами


*/



import SwiftUI

var mainFont = "AvenirNext-Bold"
let screen = UIScreen.main.bounds

@main
struct WordGameApp: App {
    
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
