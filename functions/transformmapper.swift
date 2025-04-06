struct StringMapper {
    func transform(words: [String], mapper: (String) -> String) -> [String] {
        return words.map(mapper)
    }
}

func transform() {
    let sm = StringMapper()
    let words = ["apple", "banana", "cherry"]
    print("Uppercased:", sm.transform(words: words) { $0.uppercased() })
}

transform()
