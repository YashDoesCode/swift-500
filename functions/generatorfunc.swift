func makeSequenceGenerator() -> () -> Int {
    var current = 0
    return {
        current += 1
        return current
    }
}

func generate() {
    let nextInt = makeSequenceGenerator()
    print("Next:", nextInt())
    print("Next:", nextInt())
    print("Next:", nextInt())
}

generate()
