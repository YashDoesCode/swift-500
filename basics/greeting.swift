struct Person {
    let name: String
    let age: Int

    func describe() -> String {
        return "\(name) is \(age) years old"
    }
}

func greet() {
    let host = Person(name: "Ada", age: 36)
    print(host.describe())
}

greet()
