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
    
    let animations = Animations.shared.animations
    
    private var countOfSender = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationView.layer.cornerRadius = 10
        nextAnimationButton.layer.cornerRadius = 10
        
        nextAnimationButton.setTitle(animations.first?.preset, for: .normal)
    }
    
    @IBAction func runAnimation(_ sender: SpringButton) {
        currentAnimationLabel.text = nextAnimationButton.currentTitle
        
        runAnimationForView(from: animations, withIndex: countOfSender)
        
        runAnimationForButton(from: animations, withIndex: countOfSender)
        
        countOfSender += 1
        if countOfSender > 4 {
            countOfSender = 0
        }
        
        nextAnimationButton.setTitle(animations[countOfSender].preset, for: .normal)
        
    }
        
}

extension ViewController {
    private func runAnimationForView(from animations: [Animation], withIndex index: Int) {
        animationView.animation = animations[index].preset ?? ""
        animationView.curve = animations[index].curve ?? ""
        animationView.force = animations[index].force ?? 0.0
        animationView.duration = animations[index].duration ?? 0.0
        animationView.delay = animations[index].delay ?? 0.0
        animationView.damping = animations[index].damping ?? 0.0
        animationView.velocity = animations[index].velocity ?? 0.0
        animationView.rotate = animations[index].rotate ?? 0.0
        animationView.animate()
    }
    
    private func runAnimationForButton(from animations: [Animation], withIndex index: Int) {
        nextAnimationButton.animation = animations[index].preset ?? ""
        nextAnimationButton.curve = animations[index].curve ?? ""
        nextAnimationButton.force = animations[index].force ?? 0.0
        nextAnimationButton.duration = animations[index].duration ?? 0.0
        nextAnimationButton.delay = animations[index].delay ?? 0.0
        nextAnimationButton.damping = animations[index].damping ?? 0.0
        nextAnimationButton.velocity = animations[index].velocity ?? 0.0
        nextAnimationButton.rotate = animations[index].rotate ?? 0.0
        nextAnimationButton.animate()
        
    }
}
