struct Boundary {
    func inspect() {
        let maxInt = UInt8.max
        print("Max UInt8:", maxInt)
        let wrapped = maxInt &+ 1
        print("Overflow wrapped:", wrapped)
        let minInt = UInt8.min
        let underflow = minInt &- 1
        print("Underflow wrapped:", underflow)
    }
}

func overflow() {
    let boundary = Boundary()
    boundary.inspect()
}

overflow()
