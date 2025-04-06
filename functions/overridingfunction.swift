class Formatter {
    func format(value: Double) -> String {
        return "\(value)"
    }
}

class CurrencyFormatter: Formatter {
    override func format(value: Double) -> String {
        return "$" + super.format(value: value)
    }
}

func format() {
    let f: Formatter = CurrencyFormatter()
    print(f.format(value: 49.99))
}

format()
