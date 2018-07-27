//
//  FarmViewController.swift
//  ToddlerTime
//
//  Created by Banana Viking on 4/12/18.
//  Copyright © 2018 Banana Viking. All rights reserved.
//

import UIKit
import AVFoundation

class FarmViewController: UIViewController {
    
    var player: AVAudioPlayer?
    
    @IBAction func touchCard(_ sender: AnyObject) {
        guard let card = sender as? UIButton else { return }
        
        switch card.tag {
        case 100:
            flipCard(withImage: cow.image, on: card)
        case 101:
            flipCard(withImage: dog.image, on: card)
        case 102:
            flipCard(withImage: chicken.image, on: card)
        case 103:
            flipCard(withImage: pig.image, on: card)
        case 104:
            flipCard(withImage: horse.image, on: card)
        case 105:
            flipCard(withImage: cat.image, on: card)
        default:
            print("unkown card touched")
            return
        }
    }
    
    
    //MARK: - Function Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(appDidEnterBackground), name: .UIApplicationDidEnterBackground, object: nil)
        
        // refactor this code duplication
        let card0 = self.view.viewWithTag(100) as? UIButton
        let card1 = self.view.viewWithTag(101) as? UIButton
        let card2 = self.view.viewWithTag(102) as? UIButton
        let card3 = self.view.viewWithTag(103) as? UIButton
        let card4 = self.view.viewWithTag(104) as? UIButton
        let card5 = self.view.viewWithTag(105) as? UIButton
        
        setupButtonStyle(button: card0!)
        setupButtonStyle(button: card1!)
        setupButtonStyle(button: card2!)
        setupButtonStyle(button: card3!)
        setupButtonStyle(button: card4!)
        setupButtonStyle(button: card5!)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        playSound(forObject: "pageTurnSound")
        resetCards()
    }
    
    
    //MARK: - Functions
    @objc func appDidEnterBackground() {
        resetCards()
    }
    
    func flipCard(withImage image: UIImage, on button: UIButton) {
        if button.currentImage == image {
            playSound(forObject: "flipCardSound")
            button.setImage(nil, for: .normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.8235294118, blue: 0.01176470588, alpha: 1)
        } else {
            button.setImage(image, for: .normal)
            
            switch image {
            case cow.image:
                playSound(forObject: cow.sound)
            case dog.image:
                playSound(forObject: dog.sound)
            case chicken.image:
                playSound(forObject: chicken.sound)
            case pig.image:
                playSound(forObject: pig.sound)
            case horse.image:
                playSound(forObject: horse.sound)
            case cat.image:
                playSound(forObject: cat.sound)
            default:
                print("error finding sound")
            }
        }
    }
    
    func resetCards() {  // move this function to card.swift
        let card0 = self.view.viewWithTag(100) as? UIButton
        let card1 = self.view.viewWithTag(101) as? UIButton
        let card2 = self.view.viewWithTag(102) as? UIButton
        let card3 = self.view.viewWithTag(103) as? UIButton
        let card4 = self.view.viewWithTag(104) as? UIButton
        let card5 = self.view.viewWithTag(105) as? UIButton
        
        let cards = [card0, card1, card2, card3, card4, card5]
        
        for card in cards {
            card?.setImage(nil, for: .normal)
            card?.backgroundColor = #colorLiteral(red: 1, green: 0.8235294118, blue: 0.01176470588, alpha: 1)
        }
    }
    
    func setupButtonStyle(button: UIButton) {
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.shadowOffset = CGSize(width: 4.5, height: 4.5)
        button.layer.shadowRadius = 4.5
        button.layer.shadowOpacity = 1
    }
    
    func playSound(forObject: String) {  // refactor this so you don't repeat it in each VC
        guard let url = Bundle.main.url(forResource: forObject, withExtension: "wav") else {
            print("url not found")
            return
        }
        
        do {
            /// this codes for making this app ready to takeover the device audio
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.wav.rawValue)
            
            player?.play()  // this was player!.play()
        } catch let error as NSError {
            print("error: \(error.localizedDescription)")
        }
    }
}






