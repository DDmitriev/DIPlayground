
import Foundation

class Cat {
    let name: String

    init(name: String) {
        self.name = name
    }

    func info() -> String {
        return "Кот по имени - \(name)"
    }
}

class PetOwner {
    let pet = Cat(name: "Барсик")

    func infoPet() -> String {
        return "Мое животное: \(pet.info())"
    }
}

let owner = PetOwner()
print(owner.infoPet())
