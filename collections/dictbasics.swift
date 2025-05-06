struct DictionaryDemo {
    func create() -> [String: Int] {
        var scores = ["Alice": 95, "Bob": 80]
        scores["Charlie"] = 88
        scores["Bob"] = 85
        return scores
    }
}

func demonstrate() {
    let demo = DictionaryDemo()
    let dict = demo.create()
    print("Scores count:", dict.count)
    print("Alice score:", dict["Alice"] ?? 0)
}

demonstrate()
