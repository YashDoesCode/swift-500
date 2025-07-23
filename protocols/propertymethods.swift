protocol Named {
    var name: String { get }
}

struct User: Named {
    let name: String
}

func inspect() {
    let person: Named = User(name: "Yash")
    print("Name:", person.name)
}

inspect()
