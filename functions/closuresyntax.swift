struct Greeter {
    func greet(formatter: (String) -> String) {
        print(formatter("Swift"))
    }
}

func greet() {
    let g = Greeter()
    g.greet(formatter: { name in
        return "Welcome to \(name)"
    })
}

greet()
