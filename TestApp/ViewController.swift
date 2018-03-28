//
//  ViewController.swift
//  TestApp
//
//  Created by Anna on 14/03/2018.
//  Copyright © 2018 Anna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Properties
    @IBOutlet weak var label: UILabel!
    
    //Elements player
    @IBOutlet weak var buttonFold: UIButton!
    @IBOutlet weak var buttonHigh: UIButton!
    @IBOutlet weak var buttonMiddle: UIButton!
    @IBOutlet weak var buttonLow: UIButton!
    //Elements model
    @IBOutlet weak var mButtonFold: UIButton!
    @IBOutlet weak var mButtonHigh: UIButton!
    @IBOutlet weak var mButtonMiddle: UIButton!
    @IBOutlet weak var mButtonLow: UIButton!
    
    @IBOutlet weak var pictureHuman: UIButton!
    @IBOutlet weak var pictureAI: UIButton!
    
    var game = Game()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        //additional setup stuff after loading the view
        appearModelsButtons(hide: true)
        appearPersonsButtons(hide: false)
        showInitPaintings()
        print("viewDidLoad.End")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //shows both paintings: human and AI
    //human picture is not visible
    fileprivate func showInitPaintings() {
        
        //Pick cards and show the opponents card
        let cardPerson = game.pickCard()
        let cardModel = game.pickCard()
        cardModel.revealCard()
        
        //set background of human card
        pictureHuman.backgroundColor = #colorLiteral(red: 0.4500938654, green: 0.9813225865, blue: 0.4743030667, alpha: 1)
        pictureHuman.setTitle(String(cardPerson.cardValue), for: UIControlState.normal)
        
        //set front of model card
        pictureAI.setTitle(String(cardModel.cardValue), for: UIControlState.normal)
        pictureAI.backgroundColor = #colorLiteral(red: 0.9994240403, green: 0.9855536819, blue: 0, alpha: 1)
        
    }
    
    
    func appearModelsButtons(hide: Bool){
        mButtonFold.isHidden = hide
        mButtonHigh.isHidden = hide
        mButtonMiddle.isHidden = hide
        mButtonLow.isHidden = hide
    }
    
    func appearPersonsButtons(hide: Bool){
        buttonFold.isHidden = hide
        buttonHigh.isHidden = hide
        buttonMiddle.isHidden = hide
        buttonLow.isHidden = hide
    }
    
    //making a bet
    fileprivate func getBetFromUI(_ sender: UIButton) -> String{
        let bet = sender.currentTitle!
        switch bet {
        case "high":
            label.text = bet;
            print(bet)
            print(game.currentRound)
            
        case "middle":
            label.text = bet;
            print(bet)
        case "low":
            label.text = bet;
            print(bet)
        case "FOLD":
            label.text = bet;
            print(bet)
        default:
            print(bet)
            print("error!") //error
        }
        
        //        label.text = sender.currentTitle!
        //
        
        print("End bet.")
        return sender.currentTitle!
    }
    
    @IBAction func makeBet(_ sender: UIButton) {
        print("makebet")
        var bet = getBetFromUI(sender)
        game.playOneRound(currentRound: game.currentRound, currentBet: bet)
    }
    
    @IBAction func modelMakeBet(_ sender: UIButton) {
        print("modelmakebet")
        var modelBet = getBetFromUI(sender)
    }
    //disabling buttons
    
// MARK: Actions
    
 	
}


