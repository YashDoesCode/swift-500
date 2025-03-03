struct Generator {
    func generate() {
        var num = 1
        repeat {
            print("Current:", num)
            num *= 2
        } while num <= 8
    }
}

func generate() {
    let gen = Generator()
    gen.generate()
}

generate()
