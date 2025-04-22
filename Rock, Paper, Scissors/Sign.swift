//
//  Sign.swift
//  Rock, Paper, Scissors
//
//  Created by Ennis Cruz on 4/22/25.
//

import Foundation

func randomSign() -> Sign {
    let sign = Int.random(in: 0...2)
    if sign == 0 {
        return .rock
    } else if sign == 1 {
        return .paper
    } else {
        return .scissors
    }
}

enum Sign {
    case rock
    case paper
    case scissors
    
    var emoji: String {
        switch self {
        case .rock:
            return "🪨"
        case .paper:
            return "📄"
        case .scissors:
            return "✂️"
        }
    }
    
    func gameState(against opponetSign: Sign) -> GameState {
        if self == opponetSign {
            return .draw
        }
        switch self {
        case .rock:
            if opponetSign == .scissors {
                return .win
            }
        case .paper:
            if opponetSign == .rock {
                return .win
            }
        case .scissors:
            if opponetSign == .paper {
                return .win
            }
        }
        return .lose
    }
}
