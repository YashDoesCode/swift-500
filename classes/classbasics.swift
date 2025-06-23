class Player {
    var score: Int = 0

    func advance() {
        score += 10
    }
}

func play() {
    let p = Player()
    p.advance()
    print("Score:", p.score)
}

play()
