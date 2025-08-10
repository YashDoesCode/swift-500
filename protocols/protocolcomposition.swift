protocol Named {
    var name: String { get }
}

protocol Aged {
    var age: Int { get }
}

struct Person: Named, Aged {
    let name: String
    let age: Int
}

func introduce(target: Named & Aged) {
    print("\(target.name) is \(target.age) years old")
}

func introduce() {
    let p = Person(name: "Linus", age: 54)
    introduce(target: p)
}

introduce()
