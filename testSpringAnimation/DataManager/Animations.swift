//
//  Animations.swift
//  testSpringAnimation
//
//  Created by Nikita on 6/17/20.
//  Copyright © 2020 Nikita Begletskiy. All rights reserved.
//

import UIKit

class Animations {
    
    var animations: [Animation] = []
    
    static let shared = Animations()
    
    private init() {
        self.animations = self.getAnimations()
    }
    
    private func getAnimations() -> [Animation] {
        
        return [
        Animation(preset: "slideLeft",
                  curve: "easeOutQuad",
                  force: 2.6,
                  duration: 1.3,
                  delay: nil,
                  damping: 0.7,
                  velocity: 0.3,
                  rotate: 2.4),
        Animation(preset: "squeezeRight",
                  curve: "easeInQuint",
                  force: 1.3,
                  duration: 1.0,
                  delay: nil,
                  damping: 1.0,
                  velocity: nil,
                  rotate: 1.4),
        Animation(preset: "flash",
                  curve: "linear",
                  force: 3.1,
                  duration: 1.3,
                  delay: nil,
                  damping: 0.3,
                  velocity: 0.3,
                  rotate: 2.4),
        Animation(preset: "shake",
                  curve: "easeInSine",
                  force: 3.1,
                  duration: 1.3,
                  delay: nil,
                  damping: nil,
                  velocity: 0.3,
                  rotate: 2.0),
        Animation(preset: "fadeInDown",
                  curve: "easeOutBack",
                  force: 2.3,
                  duration: 1.3,
                  delay: 0.3,
                  damping: 1.4,
                  velocity: nil,
                  rotate: nil)
    ]
        
        
        
    }
}

