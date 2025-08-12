struct PlayerID: Hashable {
    let tag: String
    let number: Int
}

func hash() {
    var scores: [PlayerID: Int] = [:]
    let p = PlayerID(tag: "PRO", number: 7)
    scores[p] = 950
    print("Player score:", scores[p] ?? 0)
}

hash()
