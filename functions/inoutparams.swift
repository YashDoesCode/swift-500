struct Swapper {
    func swap(first: inout Int, second: inout Int) {
        let temp = first
        first = second
        second = temp
    }
}

func swap() {
    let s = Swapper()
    var a = 10
    var b = 20
    s.swap(first: &a, second: &b)
    print("a:", a, "b:", b)
}

swap()
