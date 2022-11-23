//
//  ViewController.swift
//  protocolPractice
//
//  Created by Olexandr Chernets on 23.11.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

// My first mini game.


protocol Shooting {
    var faction : String { get set }
    func shot(rangeShot: Int?) -> Int?
}

extension Shooting {
    func ageHero (age: Int) -> Int {
        return age
    }
}

protocol CloseFighting {
    var faction : String { get set }
    func damage(scoreOfDamage: Int?) -> Int?
}

extension CloseFighting {
    func ageHero (age: Int) -> Int {
        return age
    }
}

protocol UniversalHero: Shooting, CloseFighting {
}

extension UniversalHero {
    func ageHero (age: Int) -> Int {
        return age
    }
}

struct Hunter: Shooting {
    var faction: String
    init (faction: String) {
        self.faction = faction
    }
    func shot(rangeShot: Int?) -> Int? {
        if let distance = rangeShot {
            print("I can shoot at a distance of \(distance) meters")
        } else {
            print("I don't have a bow")
        }
        return rangeShot
    }
}


struct Mage: Shooting {
    var faction: String
    init (faction: String) {
        self.faction = faction
    }
    func shot(rangeShot: Int?) -> Int? {
        if let distance = rangeShot {
            print("I can cast spells at a distance of \(distance) meters")
        } else {
            print("I don't have a staff")
        }
        return rangeShot
    }
}

struct Warrior: CloseFighting {
    var faction: String
    init (faction: String) {
        self.faction = faction
    }
    func damage(scoreOfDamage: Int?) -> Int? {
        if let damage = scoreOfDamage {
            print("I can hit for \(damage) damage")
        } else {
            print("I don't have sword")
        }
        return scoreOfDamage
    }
}

struct Rogue: CloseFighting {
    var faction: String
    init (faction: String) {
        self.faction = faction
    }
    func damage(scoreOfDamage: Int?) -> Int? {
        if let damage = scoreOfDamage {
            print("I can hit for \(damage) damage")
        } else {
            print("I don't have i knifes")
        }
        return scoreOfDamage
    }
}

struct Shaman: UniversalHero {
    var faction: String
    init (faction: String) {
        self.faction = faction
    }
    func shot(rangeShot: Int?) -> Int? {
        if let distance = rangeShot {
            print("I can cast spells at a distance of \(distance) meters")
        } else {
            print("I don't have a Totems")
        }
        return rangeShot
    }
    func damage(scoreOfDamage: Int?) -> Int? {
        if let damage = scoreOfDamage {
            print("I can hit for \(damage) damage")
        } else {
            print("I don't have i Daggers")
        }
        return scoreOfDamage
    }
}

struct Druid: UniversalHero {
    var faction: String
    init (faction: String) {
        self.faction = faction
    }
    func shot(rangeShot: Int?) -> Int? {
        if let distance = rangeShot {
            print("I can cast spells at a distance of \(distance) meters")
        } else {
            print("I don't have a Axes")
        }
        return rangeShot
    }
    func damage(scoreOfDamage: Int?) -> Int? {
        if let damage = scoreOfDamage {
            print("I can hit for \(damage) damage")
        } else {
            print("I don't have i Maces")
        }
        return scoreOfDamage
    }
}


var alexandr = Hunter(faction: "My name is Alexandr, I'm from the Alliance")
var david = Mage(faction: "My name is David, I'm from the Horde")
var brad = Warrior(faction: "My name is Brad, I'm from the Alliance")
var tifany = Rogue(faction: "My name is Tifany, I'm from the Horde")
var leonid = Shaman(faction: "My name is Leonid, I'm from the Alliance")
var trall = Druid(faction: "My name is Trall, I'm from the Horde")

class AllianceForces {
    var rangeHero: [Shooting] = [alexandr]
    var closeFightHero: [CloseFighting] = [brad]
    var universalHeroes: [UniversalHero] = [leonid]
    
    func startRangeHero (init: Shooting) {
        for hero in rangeHero {
            print(hero.faction)
            hero.shot(rangeShot: 300)
            print("Let's go for ALLIANCE!")
        }
    }
    func startCloseHero (init: CloseFighting) {
        for hero in closeFightHero {
            print(hero.faction)
            hero.damage(scoreOfDamage: 500)
            print("Let's go for ALLIANCE!")
        }
    }
    func universalHero (init: UniversalHero) {
        for hero in universalHeroes {
            print(hero.faction)
            hero.damage(scoreOfDamage: 700)
            hero.shot(rangeShot: 900)
            print("Let's go for ALLIANCE!")
        }
    }
}

class HordeForces {
    var rangeHero: [Shooting] = [david]
    var closeFightHero: [CloseFighting] = [tifany]
    var universalHeroes: [UniversalHero] = [trall]
    
    func startRangeHero (init: Shooting) {
        for hero in rangeHero {
            print(hero.faction)
            hero.shot(rangeShot: 450)
            print("Let's go for Horde!")
        }
    }
    func startCloseHero (init: CloseFighting) {
        for hero in closeFightHero {
            print(hero.faction)
            hero.damage(scoreOfDamage: 550)
            print("Let's go for Horde!")
        }
    }
    func universalHero (init: UniversalHero) {
        for hero in universalHeroes {
            print(hero.faction)
            hero.damage(scoreOfDamage: 670)
            hero.shot(rangeShot: 850)
            print("Let's go for Horde!")
        }
    }
}

//print("Alliance ATTACK")

//AllianceForces().startRangeHero(init: alexandr)
//AllianceForces().startCloseHero(init: brad)
//AllianceForces().universalHero(init: trall)
//
//print("Horde ATTACK")
//
//HordeForces().startRangeHero(init: david)
//HordeForces().startCloseHero(init: tifany)
//HordeForces().universalHero(init: trall)
