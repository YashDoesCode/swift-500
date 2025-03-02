struct SymmetryChecker {
    func check(point: (Int, Int)) {
        switch point {
        case let (x, y) where x == y:
            print("On diagonal: \(x) == \(y)")
        case let (x, y) where x == -y:
            print("On inverse diagonal: \(x) == -\(y)")
        case let (x, y):
            print("Arbitrary point: (\(x), \(y))")
        }
    }
}

func check() {
    let checker = SymmetryChecker()
    checker.check(point: (4, 4))
    checker.check(point: (3, -3))
}

check()
