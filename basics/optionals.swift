struct Parser {
    func parse(input: String) -> Int? {
        return Int(input)
    }

    func unwrap(input: String) {
        if let value = parse(input: input) {
            print("Parsed value:", value)
        } else {
            print("Failed to parse:", input)
        }
    }
}

func unwrap() {
    let parser = Parser()
    parser.unwrap(input: "123")
    parser.unwrap(input: "abc")
}

unwrap()
