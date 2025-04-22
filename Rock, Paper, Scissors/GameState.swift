//
//  GameState.swift
//  Rock, Paper, Scissors
//
//  Created by Ennis Cruz on 4/22/25.
//

import Foundation

enum GameState {
    case start
    case win
    case lose
    case draw
    
    var status: String {
        switch self {
        case .start:
            return "Rock, Paper, Scissors!"
        case .win:
            return "You Won!"
        case .lose:
            return "You Lose!"
        case .draw:
            return "It's a Draw!"
        }
    }
    
}
