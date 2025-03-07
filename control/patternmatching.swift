struct Matcher {
    func evaluate(number: Int) {
        switch number {
        case 0:
            print("Zero")
        case 1...10 where number % 2 == 0:
            print("Small even number:", number)
        case 1...10:
            print("Small odd number:", number)
        default:
            print("Large number:", number)
        }
    }
}

func evaluate() {
    let matcher = Matcher()
    matcher.evaluate(number: 4)
    matcher.evaluate(number: 7)
}

evaluate()
