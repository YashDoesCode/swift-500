func allItemsMatch<C1: Collection, C2: Collection>(_ c1: C1, _ c2: C2) -> Bool
where C1.Element: Equatable, C1.Element == C2.Element {
    guard c1.count == c2.count else { return false }
    for (a, b) in zip(c1, c2) {
        if a != b { return false }
    }
    return true
}

func compare() {
    print("Matches:", allItemsMatch([1, 2, 3], [1, 2, 3]))
    print("Matches:", allItemsMatch([1, 2], [1, 3]))
}

compare()
