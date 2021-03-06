//
//  Player.swift
//  Ratings
//
//  Created by HaYoung on 2017. 1. 25..
//  Copyright © 2017년 HaYoung. All rights reserved.
//

import Foundation


struct Player {
    var name: String?
    var game: String?
    var rating: Int
    
    init(name: String?, game: String?, rating: Int) {
        self.name = name
        self.game = game
        self.rating = rating
    }
}
