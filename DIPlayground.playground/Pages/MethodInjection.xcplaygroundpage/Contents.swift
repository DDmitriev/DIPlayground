//: [Previous](@previous)

import Foundation

protocol Pet {
    func info() -> String
}

class Cat: Pet {
    let name: String

    init(name: String) {
        self.name = name
    }

    func info() -> String {
        return "Кот по имени - \(name)"
    }
}

class Rabbit : Pet {
    let name: String

    init(name: String) {
        self.name = name
    }

    func info() -> String {
        return "Кролик по имени - \(name)"
    }
}

class PetOwner {
    func info(from pet: Pet) -> String {
        return "Мое животное: \(pet.info())"
    }
}

let owner = PetOwner()
print(owner.info(from: Cat(name: "Барсик")))
print(owner.info(from: Rabbit(name: "Кроля")))

//: [Next](@next)
