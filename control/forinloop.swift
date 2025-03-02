struct Looper {
    func iterate() {
        let items = ["Swift", "Rust", "Kotlin"]
        for item in items {
            print("Language:", item)
        }
    }
}

func iterate() {
    let looper = Looper()
    looper.iterate()
}

iterate()
