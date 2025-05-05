struct SetDemo {
    func create() -> Set<String> {
        var genres: Set<String> = ["Rock", "Classical", "Hip Hop"]
        genres.insert("Jazz")
        genres.insert("Rock")
        return genres
    }
}

func demonstrate() {
    let demo = SetDemo()
    let g = demo.create()
    print("Count:", g.count)
    print("Contains Jazz:", g.contains("Jazz"))
}

demonstrate()
