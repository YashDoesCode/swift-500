struct Person {
    let name: String
    let age: Int
}

func read() {
    let p = Person(name: "Grace", age: 85)
    let nameKey = \Person.name
    let ageKey = \Person.age
    print("Name via KeyPath:", p[keyPath: nameKey])
    print("Age via KeyPath:", p[keyPath: ageKey])
}

read()
