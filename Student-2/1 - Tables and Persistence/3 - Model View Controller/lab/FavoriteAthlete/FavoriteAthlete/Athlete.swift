//
//  Athlete.swift
//  FavoriteAthlete
//
//  Created by Reece Olsen on 10/8/21.
//

import Foundation
struct Athlete: CustomStringConvertible {
    var name: String
    var age: String
    var league: String
    var team: String
    var description: String {
        return "\(name)"
    }
}
