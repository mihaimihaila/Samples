//
//  SingletonServiceLocator.swift
//  DependencyInjection
//
//  Created by Mihai Mihaila on 2018-02-19.
//  Copyright © 2018 Mihai Mihaila. All rights reserved.
//

import Foundation

class ServiceLocator {
    private static var instancePrivate: ServiceLocator?
    
    public static var instance: ServiceLocator {
        return instancePrivate!
    }
    
    public private(set) var soundService: SoundServiceProtocol
    
    init(soundService: SoundServiceProtocol) {
        self.soundService = soundService
        
        ServiceLocator.instancePrivate = self
    }
}

class SingletonServiceLocator {
    class Animal {
        func action() {
            ServiceLocator.instance.soundService.makeSound()
        }
    }
    
    class Vehicle {
        func action() {
            ServiceLocator.instance.soundService.makeSound()
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
