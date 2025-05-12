struct AllCheck {
    func allPositive(numbers: [Int]) -> Bool {
        return numbers.allSatisfy { $0 > 0 }
    }
}

func check() {
    let ac = AllCheck()
    print("All positive [1, 2, 3]:", ac.allPositive(numbers: [1, 2, 3]))
    print("All positive [1, -2, 3]:", ac.allPositive(numbers: [1, -2, 3]))
}

check()
