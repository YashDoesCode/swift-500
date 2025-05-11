struct NumberParser {
    func extract(strings: [String]) -> [Int] {
        return strings.compactMap { Int($0) }
    }
}

func parse() {
    let np = NumberParser()
    let raw = ["10", "twenty", "30", "40x", "50"]
    print("Parsed numbers:", np.extract(strings: raw))
}

parse()
