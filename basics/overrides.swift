class Animal {
    func sound() -> String {
        return "Generic Sound"
    }
}

class Dog: Animal {
    override func sound() -> String {
        return "Bark"
    }
}

class Cat: Animal {
    override func sound() -> String {
        return "Meow"
    }
}

func vocalize() {
    let pets: [Animal] = [Dog(), Cat(), Animal()]
    for pet in pets {
        print(pet.sound())
    }
}

vocalize()
