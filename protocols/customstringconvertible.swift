struct Product: CustomStringConvertible {
    let name: String
    let price: Double

    var description: String {
        return "Product('\(name)', $\(price))"
    }
}

func describe() {
    let prod = Product(name: "Laptop", price: 1299.99)
    print(prod)
}

describe()
