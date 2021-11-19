//
//  Player.swift
//  scoreboard
//
//  Created by Reece Olsen on 10/20/21.
//

import Foundation

struct Player: Comparable {
    static func < (lhs: Player, rhs: Player) -> Bool {
        lhs.playerScore > rhs.playerScore
    }
    
    var id: UUID
    var playerName: String
    var playerScore: Double
}
var players = [Player(id: UUID(), playerName: "Player 1", playerScore: 0.0 )]


