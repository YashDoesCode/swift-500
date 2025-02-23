struct Score: Comparable {
    let points: Int

    static func < (lhs: Score, rhs: Score) -> Bool {
        return lhs.points < rhs.points
    }
}

func rank() {
    let s1 = Score(points: 50)
    let s2 = Score(points: 80)
    print("s1 < s2:", s1 < s2)
    print("s1 >= s2:", s1 >= s2)
    print("s1 == s2:", s1 == s2)
}

rank()
