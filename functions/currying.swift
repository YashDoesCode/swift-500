func multiply(a: Int) -> (Int) -> Int {
    return { b in a * b }
}

func curry() {
    let triple = multiply(a: 3)
    print("3 * 5:", triple(5))
    print("3 * 8:", triple(8))
}

curry()
