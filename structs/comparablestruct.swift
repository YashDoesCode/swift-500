struct Version: Comparable {
    let major: Int
    let minor: Int

    static func < (lhs: Version, rhs: Version) -> Bool {
        if lhs.major != rhs.major {
            return lhs.major < rhs.major
        }
        return lhs.minor < rhs.minor
    }
}

func compare() {
    let v1 = Version(major: 5, minor: 9)
    let v2 = Version(major: 6, minor: 0)
    print("v1 < v2:", v1 < v2)
    print("v1 >= v2:", v1 >= v2)
}

compare()
