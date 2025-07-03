class Token {
    let value: String
    init(value: String) {
        self.value = value
    }
}

func check() {
    let t1 = Token(value: "auth")
    let t2 = Token(value: "auth")
    let t3 = t1
    print("t1 === t2:", t1 === t2)
    print("t1 === t3:", t1 === t3)
}

check()
