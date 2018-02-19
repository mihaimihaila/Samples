//
//  ProtocolExtensions.swift
//  DependencyInjection
//
//  Created by Mihai Mihaila on 2018-02-19.
//  Copyright © 2018 Mihai Mihaila. All rights reserved.
//

import Foundation

protocol HasSoundService {
}

extension HasSoundService {
    var soundService: SoundServiceProtocol {
        return ServiceLocator.instance.soundService
    }
}

class ProtocolExtensions {
    class Animal: HasSoundService {
        func action() {
            soundService.makeSound()
        }
    }
    
    class Vehicle: HasSoundService {
        func action() {
            soundService.makeSound()
        }
    }
    
    func buildObjects() {
        let soundService = SoundService()
        let _ = ServiceLocator(soundService: soundService)
        let animal = Animal()
        let vehicle = Vehicle()
        
        animal.action()
        vehicle.action()
    }
}
