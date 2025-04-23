func greet(greeting: String, name: String) -> String {
    return "\(greeting), \(name)!"
}

func partial(greeting: String) -> (String) -> String {
    return { name in greet(greeting: greeting, name: name) }
}

func partial() {
    let sayHello = partial(greeting: "Hello")
    print(sayHello("Alice"))
    print(sayHello("Bob"))
}

partial()
