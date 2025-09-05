struct Pair<First, Second> {
    let first: First
    let second: Second
}

func pair() {
    let p = Pair(first: "Swift", second: 6)
    print("Pair:", p.first, p.second)
}

pair()
