class Customer {
    let name: String
    var card: CreditCard?

    init(name: String) {
        self.name = name
    }
}

class CreditCard {
    let number: Int
    unowned let customer: Customer

    init(number: Int, customer: Customer) {
        self.number = number
        self.customer = customer
    }
}

func assign() {
    let c = Customer(name: "Bob")
    let card = CreditCard(number: 12345678, customer: c)
    c.card = card
    print("Card belongs to:", card.customer.name)
}

assign()
