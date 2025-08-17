struct Milliseconds: ExpressibleByIntegerLiteral {
    let ms: Int

    init(integerLiteral value: Int) {
        self.ms = value
    }
}

func express() {
    let delay: Milliseconds = 5000
    print("Delay ms:", delay.ms)
}

express()
