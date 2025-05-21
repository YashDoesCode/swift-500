struct Frequency {
    func analyze(letters: String) -> [Character: Int] {
        var freq: [Character: Int] = [:]
        for ch in letters {
            freq[ch, default: 0] += 1
        }
        return freq
    }
}

func frequency() {
    let f = Frequency()
    print("Frequencies:", f.analyze(letters: "abracadabra"))
}

frequency()
