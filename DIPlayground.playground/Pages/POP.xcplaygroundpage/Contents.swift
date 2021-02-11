//: [Previous](@previous)

import Foundation

struct Cat: Pet {
    let name: String
    let kind = "Кот"
}

struct Rabbit: Pet {
    let name: String
    let kind = "Кролик"
}

struct PetOwner {
    let pet: Pet
}

// MARK: -

protocol Pet {
    var name: String { get }
    var kind: String { get }
}

extension Pet {
    func info() -> String {
        return "\(kind) по имени - \(name)"

    }
}

// MARK: -


extension PetOwner {
    func infoPet() -> String {
        return "Мое животное: \(pet.info())"
    }
}

let ownerCat = PetOwner(pet: Cat(name: "Барсик"))
print(ownerCat.infoPet())

let ownerRabbit = PetOwner(pet: Rabbit(name: "Кроля"))
print(ownerRabbit.infoPet())

//: [Next](@next)
