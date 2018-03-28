//
//  Game.swift
//  TestApp
//
//  Created by Anna on 19/03/2018.
//  Copyright © 2018 Anna. All rights reserved.
//

import Foundation

extension Array
{
    func random() -> Element
    {
        return self[Int(arc4random_uniform(UInt32(self.count)))]
    }
    
    //This extension will let you retrieve a shuffled copy of an Array instance:
    //use: let numbers = [1, 2, 3, 4, 5, 6, 7, 8]
    //let mixedup = numbers.shuffled()     // e.g., mixedup == [6, 1, 8, 3, 2, 4, 7, 5]

    func shuffled() -> Array {
        if count < 2 { return self }
        var list = self
        for i in 0..<(list.count - 1) {
            let j = Int(arc4random_uniform(UInt32(list.count - i))) + i
            list.swapAt(i, j)
        }
        return list
    }
}

class Game {
    
    let totalRoundsInGame = 10
    let totalAmountOfCoinsPerPersonInGame = 25
    let totalAmountOfCardsInGame = 52
    var currentRound = 0
    var currentTurnInRound = 0
    var playerCurrentCoins = 25
    var modelCurrentCoins = 25
    var status = Status.ready
    var playersTurn = true //player comes first in uneven rounds (1,3,5,7,9)
    
    let deck = Deck()
    
    //Init stuff before game starts
    func initGameRessources(){
        
    }
    
    //playing the whole game with x rounds
    func playGame(){
        
        //play until last round or reset
        for currentRound in 0..<totalRoundsInGame {
          //  playOneRound(currentRound: currentRound)
        }
    }
    
 
    fileprivate func coinsOnTable() {
       
    }
    
    //playing one round
    func playOneRound(currentRound round: Int, currentBet: String){

        coinsOnTable()   //firstCoins on table
        
        switch status {
        case .ready:
            status = Status.turn1
           // playFirstTurn()
        case .turn1:
            status = Status.turn2
        //TODO: Disable GUI buttons
        case .turn2:
            status = Status.turn3
            //TODO: Disable GUI buttons
        case .turn3:
            status = Status.ready
        //TODO: Disable GUI buttons
        }
        
        switchTurn()
    }
    
    func pickCard() -> Card{
        return deck.pickCard()
    }

    
    //for switching the turn
    func switchTurn(){
        //change turns
        if playersTurn {
            print(playersTurn)
            playersTurn = !playersTurn
            print(playersTurn)
        }
    }
    
    //Update stuff
    func updateGameRessources(){
    
    }
    
    //reset game
    func resetGame(){
    
    }
}
