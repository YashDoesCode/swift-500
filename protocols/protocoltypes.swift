protocol Greeter {
    func greet() -> String
}

struct EnglishGreeter: Greeter {
    func greet() -> String { return "Hello" }
}

struct SpanishGreeter: Greeter {
    func greet() -> String { return "Hola" }
}

func broadcast() {
    let greeters: [Greeter] = [EnglishGreeter(), SpanishGreeter()]
    for g in greeters {
        print(g.greet())
    }
}

broadcast()
