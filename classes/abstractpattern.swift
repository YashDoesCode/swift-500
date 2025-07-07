class PaymentMethod {
    func pay(amount: Double) {
        fatalError("Subclass must implement")
    }
}

class CardPayment: PaymentMethod {
    let lastFour: String
    init(lastFour: String) {
        self.lastFour = lastFour
    }
    override func pay(amount: Double) {
        print("Paid $\(amount) using Card ending in \(lastFour)")
    }
}

func checkout() {
    let payment: PaymentMethod = CardPayment(lastFour: "4242")
    payment.pay(amount: 89.50)
}

checkout()
