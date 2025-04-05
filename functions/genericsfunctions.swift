struct Swapper {
    func exchange<T>(_ a: inout T, _ b: inout T) {
        let temp = a
        a = b
        b = temp
    }
}

func exchange() {
    let s = Swapper()
    var str1 = "World"
    var str2 = "Hello"
    s.exchange(&str1, &str2)
    print(str1, str2)
}

exchange()
