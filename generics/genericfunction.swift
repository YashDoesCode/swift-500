func swapValues<T>(_ a: inout T, _ b: inout T) {
    let temp = a
    a = b
    b = temp
}

func swap() {
    var x = 100
    var y = 200
    swapValues(&x, &y)
    print("x:", x, "y:", y)
}

swap()
