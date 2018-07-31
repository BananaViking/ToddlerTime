//
//  MarketViewController.swift
//  ToddlerTime
//
//  Created by Banana Viking on 4/27/18.
//  Copyright © 2018 Banana Viking. All rights reserved.
//

//import UIKit
//import AVFoundation
//
//class MarketViewController: UIViewController {
//    
//    let primaryVC = FarmViewController()
//    
//    @IBAction func touchCard(_ sender: AnyObject) {
//        guard let card = sender as? UIButton else { return }
//        
//        switch card.tag {
//        case 200:
//            flipCard(withImage: apple.image, on: card)
//        case 201:
//            flipCard(withImage: banana.image, on: card)
//        case 202:
//            flipCard(withImage: carrot.image, on: card)
//        case 203:
//            flipCard(withImage: broccoli.image, on: card)
//        case 204:
//            flipCard(withImage: strawberry.image, on: card)
//        case 205:
//            flipCard(withImage: pepper.image, on: card)
//        default:
//            print("unkown card touched")
//            return
//        }
//    }
//    
//    
//    // MARK: - Function Overrides
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        NotificationCenter.default.addObserver(self, selector: #selector(appDidEnterBackground), name: .UIApplicationDidEnterBackground, object: nil)
//        
//        primaryVC.setupButtonStyle(button: (view.viewWithTag(200) as? UIButton)!)
//        primaryVC.setupButtonStyle(button: (view.viewWithTag(201) as? UIButton)!)
//        primaryVC.setupButtonStyle(button: (view.viewWithTag(202) as? UIButton)!)
//        primaryVC.setupButtonStyle(button: (view.viewWithTag(203) as? UIButton)!)
//        primaryVC.setupButtonStyle(button: (view.viewWithTag(204) as? UIButton)!)
//        primaryVC.setupButtonStyle(button: (view.viewWithTag(205) as? UIButton)!)
//    }
//    
//    override func viewWillDisappear(_ animated: Bool) {
//        primaryVC.playSound(forObject: "pageTurnSound")
//        resetCards()
//    }
//    
//    
//    // MARK: - Functions
//    @objc func appDidEnterBackground() {
//        resetCards()
//    }
//    
//    func flipCard(withImage image: UIImage, on button: UIButton) {
//        if button.currentImage == image {
//            primaryVC.playSound(forObject: "flipCardSound")
//            button.setImage(nil, for: .normal)
//            button.backgroundColor = #colorLiteral(red: 0.9254901961, green: 0.1098039216, blue: 0.1411764706, alpha: 1)
//        } else {
//            button.setImage(image, for: .normal)
//            
//            switch image {
//            case apple.image:
//                primaryVC.playSound(forObject: apple.sound)
//            case banana.image:
//                primaryVC.playSound(forObject: banana.sound)
//            case carrot.image:
//                primaryVC.playSound(forObject: carrot.sound)
//            case broccoli.image:
//                primaryVC.playSound(forObject: broccoli.sound)
//            case strawberry.image:
//                primaryVC.playSound(forObject: strawberry.sound)
//            case pepper.image:
//                primaryVC.playSound(forObject: pepper.sound)
//            default:
//                print("error finding sound")
//            }
//        }
//    }
//    
//    func resetCards() {
//        let cards = [view.viewWithTag(200) as? UIButton,
//                     view.viewWithTag(201) as? UIButton,
//                     view.viewWithTag(202) as? UIButton,
//                     view.viewWithTag(203) as? UIButton,
//                     view.viewWithTag(204) as? UIButton,
//                     view.viewWithTag(205) as? UIButton]
//        
//        for card in cards {
//            card?.setImage(nil, for: .normal)
//            card?.backgroundColor = #colorLiteral(red: 0.9254901961, green: 0.1098039216, blue: 0.1411764706, alpha: 1)
//        }
//    }
//}