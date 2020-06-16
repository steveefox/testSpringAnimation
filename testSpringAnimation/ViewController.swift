//
//  ViewController.swift
//  testSpringAnimation
//
//  Created by Nikita on 6/16/20.
//  Copyright © 2020 Nikita Begletskiy. All rights reserved.
//

import UIKit
import Spring

class ViewController: UIViewController {
    
    @IBOutlet weak var animationView: SpringView!
    @IBOutlet weak var currentAnimationLabel: SpringLabel!
    @IBOutlet weak var nextAnimationButton: SpringButton!
    
    private var countOfSender = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationView.layer.cornerRadius = 10
        nextAnimationButton.layer.cornerRadius = 10
        nextAnimationButton.setTitle("wobble", for: .normal)
        nextAnimationButton.animation = "pop"
        nextAnimationButton.curve = "easeIn"
        nextAnimationButton.force =  1.4
        nextAnimationButton.duration =  2
        nextAnimationButton.animate()
    }
    
    @IBAction func runAnimation(_ sender: SpringButton) {
        
        switch countOfSender {
        case 0:
            nextAnimationButton.animation = "flipX"
            nextAnimationButton.curve = "easeOutSine"
            nextAnimationButton.duration =  1.0
            nextAnimationButton.damping =  0.8
            nextAnimationButton.animate()
            
            currentAnimationLabel.text = nextAnimationButton.currentTitle
            
            animationView.animation = nextAnimationButton.currentTitle ?? ""
            animationView.curve = "easeIn"
            animationView.force = 2
            animationView.duration = 1
            animationView.animate()
            
            nextAnimationButton.setTitle("squeezeUp", for: .normal)
            countOfSender += 1
        case 1:
            nextAnimationButton.animation = "flipY"
            nextAnimationButton.curve = "easeInOut"
            nextAnimationButton.duration =  1.0
            nextAnimationButton.damping =  0.8
            nextAnimationButton.animate()
            
            currentAnimationLabel.text = nextAnimationButton.currentTitle
            
            animationView.animation = nextAnimationButton.currentTitle ?? ""
            animationView.curve = "easeIn"
            animationView.force = 2
            animationView.duration = 1
            animationView.animate()
            
            nextAnimationButton.setTitle("flash", for: .normal)
            countOfSender += 1
        case 2:
            nextAnimationButton.animation = "zoomIn"
            nextAnimationButton.curve = "easeOutCubic"
            nextAnimationButton.duration =  1.0
            nextAnimationButton.damping =  0.8
            nextAnimationButton.animate()
            
            currentAnimationLabel.text = nextAnimationButton.currentTitle
            
            animationView.animation = nextAnimationButton.currentTitle ?? ""
            animationView.curve = "easeIn"
            animationView.force = 2
            animationView.duration = 1
            animationView.animate()
            
            nextAnimationButton.setTitle("shake", for: .normal)
            countOfSender += 1
        case 3:
            nextAnimationButton.animation = "flipY"
            nextAnimationButton.curve = "easeInCubic"
            nextAnimationButton.force =  2.4
            nextAnimationButton.duration =  2.0
            nextAnimationButton.damping =  0.8
            nextAnimationButton.animate()
            
            currentAnimationLabel.text = nextAnimationButton.currentTitle
            
            animationView.animation = nextAnimationButton.currentTitle ?? ""
            animationView.curve = "easeIn"
            animationView.force = 1
            animationView.duration = 1
            animationView.animate()
            
            nextAnimationButton.setTitle("squeeze", for: .normal)
            countOfSender += 1
        case 4:
            nextAnimationButton.animation = "squeeze"
            nextAnimationButton.curve = "easeInQuad"
            nextAnimationButton.duration =  2.0
            nextAnimationButton.damping =  0.8
            nextAnimationButton.animate()
            
            currentAnimationLabel.text = nextAnimationButton.currentTitle
            
            animationView.animation = nextAnimationButton.currentTitle ?? ""
            animationView.curve = "easeIn"
            animationView.force = 2
            animationView.duration = 1
            animationView.animate()
            
            nextAnimationButton.setTitle("swing", for: .normal)
            countOfSender += 1
        case 5:
            nextAnimationButton.animation = "flipX"
            nextAnimationButton.curve = "easeOutCubic"
            nextAnimationButton.force =  1.9
            nextAnimationButton.duration =  2.0
            nextAnimationButton.delay =  0.8
            nextAnimationButton.damping =  0.8
            nextAnimationButton.animate()
            
            currentAnimationLabel.text = nextAnimationButton.currentTitle
            
            animationView.animation = nextAnimationButton.currentTitle ?? ""
            animationView.curve = "easeIn"
            animationView.force = 2
            animationView.duration = 1
            animationView.animate()
            
            nextAnimationButton.setTitle("wobble", for: .normal)
            countOfSender = 0
        default:
            break
        }
        
    }
    
    
    
}

