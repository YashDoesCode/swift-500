import Foundation

struct Money {
    let amountCents: Int
    let currency: String

    var display: String {
        let dollars = Double(amountCents) / 100.0
        return String(format: "%.2f \(currency)", dollars)
    }
}

func format() {
    let m = Money(amountCents: 1999, currency: "USD")
    print("Display:", m.display)
}

format()
