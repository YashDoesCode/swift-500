struct SetMath {
    func evaluate() {
        let setA: Set<Int> = [1, 2, 3, 4]
        let setB: Set<Int> = [3, 4, 5, 6]
        print("Union:", setA.union(setB).sorted())
        print("Intersection:", setA.intersection(setB).sorted())
        print("Subtracting:", setA.subtracting(setB).sorted())
        print("Symmetric Diff:", setA.symmetricDifference(setB).sorted())
    }
}

func evaluate() {
    let sm = SetMath()
    sm.evaluate()
}

evaluate()
