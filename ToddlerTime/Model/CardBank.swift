//
//  CardBank.swift
//  ToddlerTime
//
//  Created by Banana Viking on 7/31/18.
//  Copyright © 2018 Banana Viking. All rights reserved.
//

import UIKit

class CardBank {
    var allCards = [Card]()
    
    func resetCards() {
        // add universal card rest func here?
    }
    
    init() {
        allCards.append(Card(color: #colorLiteral(red: 1, green: 0.8235294118, blue: 0.01176470588, alpha: 1), image: UIImage(named: "cowImage")!, sound: "cowSound"))
        allCards.append(Card(color: #colorLiteral(red: 1, green: 0.8235294118, blue: 0.01176470588, alpha: 1), image: UIImage(named: "dogImage")!, sound: "dogSound"))
        allCards.append(Card(color: #colorLiteral(red: 1, green: 0.8235294118, blue: 0.01176470588, alpha: 1), image: UIImage(named: "chickenImage")!, sound: "chickenSound"))
        allCards.append(Card(color: #colorLiteral(red: 1, green: 0.8235294118, blue: 0.01176470588, alpha: 1), image: UIImage(named: "pigImage")!, sound: "pigSound"))
        allCards.append(Card(color: #colorLiteral(red: 1, green: 0.8235294118, blue: 0.01176470588, alpha: 1), image: UIImage(named: "horseImage")!, sound: "horseSound"))
        allCards.append(Card(color: #colorLiteral(red: 1, green: 0.8235294118, blue: 0.01176470588, alpha: 1), image: UIImage(named: "catImage")!, sound: "catSound"))
        
        allCards.append(Card(color: #colorLiteral(red: 0.9254901961, green: 0.1098039216, blue: 0.1411764706, alpha: 1), image: UIImage(named: "appleImage")!, sound: "appleSound"))
        allCards.append(Card(color: #colorLiteral(red: 0.9254901961, green: 0.1098039216, blue: 0.1411764706, alpha: 1), image: UIImage(named: "bananaImage")!, sound: "bananaSound"))
        allCards.append(Card(color: #colorLiteral(red: 0.9254901961, green: 0.1098039216, blue: 0.1411764706, alpha: 1), image: UIImage(named: "carrotImage")!, sound: "carrotSound"))
        allCards.append(Card(color: #colorLiteral(red: 0.9254901961, green: 0.1098039216, blue: 0.1411764706, alpha: 1), image: UIImage(named: "broccoliImage")!, sound: "broccoliSound"))
        allCards.append(Card(color: #colorLiteral(red: 0.9254901961, green: 0.1098039216, blue: 0.1411764706, alpha: 1), image: UIImage(named: "strawberryImage")!, sound: "strawberrySound"))
        allCards.append(Card(color: #colorLiteral(red: 0.9254901961, green: 0.1098039216, blue: 0.1411764706, alpha: 1), image: UIImage(named: "pepperImage")!, sound: "pepperSound"))
        
        allCards.append(Card(color: #colorLiteral(red: 0.003921568627, green: 0.462745098, blue: 0.7647058824, alpha: 1), image: UIImage(named: "oneImage")!, sound: "oneSound"))
        allCards.append(Card(color: #colorLiteral(red: 0.003921568627, green: 0.462745098, blue: 0.7647058824, alpha: 1), image: UIImage(named: "twoImage")!, sound: "twoSound"))
        allCards.append(Card(color: #colorLiteral(red: 0.003921568627, green: 0.462745098, blue: 0.7647058824, alpha: 1), image: UIImage(named: "threeImage")!, sound: "threeSound"))
        allCards.append(Card(color: #colorLiteral(red: 0.003921568627, green: 0.462745098, blue: 0.7647058824, alpha: 1), image: UIImage(named: "fourImage")!, sound: "fourSound"))
        allCards.append(Card(color: #colorLiteral(red: 0.003921568627, green: 0.462745098, blue: 0.7647058824, alpha: 1), image: UIImage(named: "fiveImage")!, sound: "fiveSound"))
        allCards.append(Card(color: #colorLiteral(red: 0.003921568627, green: 0.462745098, blue: 0.7647058824, alpha: 1), image: UIImage(named: "sixImage")!, sound: "sixSound"))
        
        allCards.append(Card(color: #colorLiteral(red: 0.4745098039, green: 0.1764705882, blue: 0.5725490196, alpha: 1), image: UIImage(named: "circleImage")!, sound: "circleSound"))
        allCards.append(Card(color: #colorLiteral(red: 0.4745098039, green: 0.1764705882, blue: 0.5725490196, alpha: 1), image: UIImage(named: "squareImage")!, sound: "squareSound"))
        allCards.append(Card(color: #colorLiteral(red: 0.4745098039, green: 0.1764705882, blue: 0.5725490196, alpha: 1), image: UIImage(named: "triangleImage")!, sound: "triangleSound"))
        allCards.append(Card(color: #colorLiteral(red: 0.4745098039, green: 0.1764705882, blue: 0.5725490196, alpha: 1), image: UIImage(named: "diamondImage")!, sound: "diamondSound"))
        allCards.append(Card(color: #colorLiteral(red: 0.4745098039, green: 0.1764705882, blue: 0.5725490196, alpha: 1), image: UIImage(named: "starImage")!, sound: "starSound"))
        allCards.append(Card(color: #colorLiteral(red: 0.4745098039, green: 0.1764705882, blue: 0.5725490196, alpha: 1), image: UIImage(named: "heartImage")!, sound: "heartSound"))
    }
}
