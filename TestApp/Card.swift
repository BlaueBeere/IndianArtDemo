//
//  Card.swift
//  TestApp
//
//  Created by Anna on 19/03/2018.
//  Copyright © 2018 Anna. All rights reserved.
//

import Foundation

class Card{
    private var visible = false
    private let valueOfCard = Int(arc4random_uniform(UInt32(7))) + 1 //1-7
    
    var cardValue : Int {
        get{
            if visible{
                return valueOfCard
            } else {
                return -1
            }
        }
    }
    
    func revealCard(){
        self.visible = true
    }
    
    //Later for pictures:
    //------------------
    //var image = 0//TODO: image CGImage
    //Get image
    //func getImage()
    
    //Get a random cardValue
//    func getCardValue() -> Int {
//        return -1
//    }
    
}
