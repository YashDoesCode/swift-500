struct Filter {
    func evaluate(value: Int) {
        guard value > 0, value % 2 == 0 else {
            print("Must be positive even number")
            return
        }
        print("Valid positive even:", value)
    }
}

func evaluate() {
    let f = Filter()
    f.evaluate(value: 4)
    f.evaluate(value: 3)
}

evaluate()
