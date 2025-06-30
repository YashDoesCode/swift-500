class Person {
    let name: String
    let age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    convenience init(name: String) {
        self.init(name: name, age: 0)
    }
}

func create() {
    let p = Person(name: "Newborn")
    print("Person:", p.name, "Age:", p.age)
}

create()
