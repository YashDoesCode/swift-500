struct Math {
    func add(first: Int, second: Int) -> Int {
        return first + second
    }
}

func add() {
    let m = Math()
    print("Sum:", m.add(first: 10, second: 25))
}

add()
