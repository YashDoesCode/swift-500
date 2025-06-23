class Animal {
    let species: String
    init(species: String) {
        self.species = species
    }
    func identify() -> String {
        return "Species: \(species)"
    }
}

class Dog: Animal {
    init() {
        super.init(species: "Canine")
    }
}

func identify() {
    let d = Dog()
    print(d.identify())
}

identify()
