struct Convert {
    func transform(input: String) {
        let asInt = Int(input)
        let asDouble = Double(input)
        print("Input:", input)
        print("As Int:", asInt ?? -1)
        print("As Double:", asDouble ?? -1.0)
    }
}

func convert() {
    let c = Convert()
    c.transform(input: "128")
    c.transform(input: "45.67")
}

convert()
