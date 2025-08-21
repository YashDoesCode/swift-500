enum Direction: CaseIterable {
    case north, south, east, west
}

func enumerate() {
    print("All directions count:", Direction.allCases.count)
    for dir in Direction.allCases {
        print("Direction:", dir)
    }
}

enumerate()
