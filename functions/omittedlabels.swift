struct Multiplier {
    func multiply(_ a: Int, _ b: Int) -> Int {
        return a * b
    }
}

func multiply() {
    let m = Multiplier()
    print("Product:", m.multiply(7, 8))
}

multiply()
