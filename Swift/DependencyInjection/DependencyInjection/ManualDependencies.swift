//
//  ManualDependencies.swift
//  DependencyInjection
//
//  Created by Mihai Mihaila on 2018-02-19.
//  Copyright © 2018 Mihai Mihaila. All rights reserved.
//

import Foundation

class ManualDependencies {
    class Animal {
        private var soundService: SoundServiceProtocol
        
        init(soundService: SoundServiceProtocol) {
            self.soundService = soundService
        }
        
        func action() {
            soundService.makeSound()
        }
    }
    
    class Vehicle {
        private var soundService: SoundServiceProtocol
        
        init(soundService: SoundServiceProtocol) {
            self.soundService = soundService
        }
        
        func action() {
            soundService.makeSound()
        }
    }
    
    class Horn {
        private var soundService: SoundServiceProtocol
        
        init(soundService: SoundServiceProtocol) {
            self.soundService = soundService
        }
        
        func action() {
            soundService.makeSound()
        }
    }
    
    func buildObjects() {
        let soundService = SoundService()
        let animal = Animal(soundService: soundService)
        let vehicle = Vehicle(soundService: soundService)
        
        animal.action()
        vehicle.action()
    }
}
