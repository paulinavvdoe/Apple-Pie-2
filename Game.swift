//
//  Game.swift
//  Apple Pie
//
//  Created by Paulina Van der Doe on 15/02/2018.
//  Copyright © 2018 Paulina Van der Doe. All rights reserved.
//

import Foundation

struct Game {
// Create structure for letters guessed.
    var word: String
    var incorrectMovesRemaining: Int
    var guessedLetters: [Character]

    mutating func playerGuessed(letter: Character) {
    // Function that checks if a letter is guessed right and substracts points if not.
            guessedLetters.append(letter)
            if !word.characters.contains(letter) {
                incorrectMovesRemaining -= 1
            }
        }
    
    var formattedWord: String {
    // Displays the letter guessed correctly.
        var guessedWord = ""
        for letter in word.characters {
            if guessedLetters.contains(letter) {
                guessedWord += "\(letter)"
            } else {
                guessedWord += "_"
            }
        }
        return guessedWord
    }
    
}

