//
//  Before.swift
//  DependencyInjection
//
//  Created by Mihai Mihaila on 2018-02-19.
//  Copyright © 2018 Mihai Mihaila. All rights reserved.
//

import Foundation

protocol SoundServiceProtocol {
    func makeSound()
}

class SoundService: SoundServiceProtocol {
    func makeSound() {
        print("makeSound was called")
    }
}

class Animal {
    func action() {
        // use SoundService and call makeSound()
    }
}

class Vehicle {
    func action() {
        // use SoundService and call makeSound()
    }
}
