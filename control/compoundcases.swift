struct CharacterFilter {
    func categorize(char: Character) -> String {
        switch char {
        case "a", "e", "i", "o", "u":
            return "Vowel"
        case "b", "c", "d", "f", "g":
            return "Consonant"
        default:
            return "Other"
        }
    }
}

func categorize() {
    let filter = CharacterFilter()
    print(filter.categorize(char: "e"))
    print(filter.categorize(char: "c"))
}

categorize()
