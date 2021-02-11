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
    var pet: Pet?

    func infoPet() -> String {
        guard let pet = pet else {
            return "Not injected"
        }

        return "Мое животное: \(pet.info())"
    }
}

let ownerCat = PetOwner()
print(ownerCat.infoPet())
ownerCat.pet = Cat(name: "Барсик")
print(ownerCat.infoPet())

let ownerRabbit = PetOwner()
//ownerRabbit.pet = Rabbit(name: "Кроля")
print(ownerRabbit.infoPet())

//: [Next](@next)
