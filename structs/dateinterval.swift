struct TimeRange {
    let startSecond: Int
    let endSecond: Int

    var duration: Int {
        return endSecond - startSecond
    }

    func overlaps(with other: TimeRange) -> Bool {
        return startSecond < other.endSecond && other.startSecond < endSecond
    }
}

func check() {
    let r1 = TimeRange(startSecond: 0, endSecond: 100)
    let r2 = TimeRange(startSecond: 50, endSecond: 150)
    print("Overlaps:", r1.overlaps(with: r2))
}

check()
