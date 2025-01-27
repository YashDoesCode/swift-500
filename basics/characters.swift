struct Word {
    let raw: String

    func breakdown() {
        for char in raw {
            print("Char:", char, "ASCII:", char.asciiValue ?? 0)
        }
    }
}

func breakdown() {
    let word = Word(raw: "Swift")
    word.breakdown()
}

breakdown()
