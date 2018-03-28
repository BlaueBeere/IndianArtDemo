//
//  Deck.swift
//  TestApp
//
//  Created by Anna on 19/03/2018.
//  Copyright © 2018 Anna. All rights reserved.
//

import Foundation

class Deck{
    private let totalAmountOfCards = 52
    var deck: [Card] = [] //empty array
    
    //Create a deck and init the cards in it
    init(){
        print(totalAmountOfCards)
        for i in 0..<totalAmountOfCards{
            deck.insert(Card(), at: i)
            print(i)
        }
        print("Deck.init() count", deck.count)
        print(deck)
        print("Deck.init.end.")
    }
    
    //picks a card from the deck and deletes it from deck
    func pickCard() -> Card {
//        print("pickCard.count=")
//        print(deck.count)
        let card: Card = deck.removeFirst()
//        print(deck.count)
        return card
    }
    
    //Mix cards
    private func shuffleCards(cards: [Card]) -> [Card]{
        return cards.shuffled()
    }
}
