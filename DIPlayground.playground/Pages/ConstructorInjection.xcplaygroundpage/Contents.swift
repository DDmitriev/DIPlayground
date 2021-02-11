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

class Rabbit: Pet {
    let name: String

    init(name: String) {
        self.name = name
    }

    func info() -> String {
        return "Кролик по имени - \(name)"
    }
}

class FakePet: Pet {
    func info() -> String {
        return "Test"
    }
}

class PetOwner {
    let pet: Pet

    init(pet: Pet) {
        self.pet = pet
    }

    func infoPet() -> String {
        return "Мое животное: \(pet.info())"
    }
}

let ownerCat = PetOwner(pet: Cat(name: "Барсик"))
print(ownerCat.infoPet())

let ownerRabbit = PetOwner(pet: Rabbit(name: "Кроля"))
print(ownerRabbit.infoPet())

let ownerTest = PetOwner(pet: FakePet())
print(ownerTest.infoPet())


//: [Next](@next)
