//
//  GameViewModel.swift
//  WordGame
//
//  Created by MM on 05.08.2022.
//

import Foundation

class GameViewModel: ObservableObject {
    
    @Published var player1: Player
    @Published var player2: Player
    @Published var words = [String]()
    
    let word: String
    var isFirst = true
    
    init(player1: Player, player2: Player, word: String) {
        self.player1 = player1
        self.player2 = player2
        self.word = word.uppercased()
    }
    
    func validate(word: String) -> Bool {
        
        let word = word.uppercased()
        
        guard word != self.word else {
            print("not good")
            return false
        }
        
        guard !(words.contains(word)) else {
            print("слово уже было")
            return false
        }
        
        guard word.count > 1 else {
            print("Слово должно быть больше 2 букв")
            return false
        }
                
        return true
                
    }
    
    func wordToChars(word: String) -> [Character] {
        var chars = [Character]()
        for char in word.uppercased() {
            chars.append(char)
        }
        return chars
    }
    
    func check(word: String) -> Int {
        
        var result = ""
        
        guard self.validate(word: word) else {
            return 0
        }
        
        var bigWordArray = wordToChars(word: self.word)
        let smallWordArray = wordToChars(word: word)
        
        for i in smallWordArray {
           guard bigWordArray.contains(i) else {
                print("Слово неподходит")
                return 0
            }
            
            result.append(i)
//            Player.add(1)
            
            var a = 0
            while bigWordArray[a] != i {
                a += 1
            }
            bigWordArray.remove(at: a)
        }
        
        guard result == word.uppercased() else {
            print("Hz Oshibka")
            return 0
        }
        
        words.append(result)
        
        if isFirst {
            player1.score += result.count
        } else {
            player2.score += result.count
        }
        
        isFirst.toggle()
        
        return result.count
    }
    
}
