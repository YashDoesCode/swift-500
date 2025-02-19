class Account {
    var balance: Double = 0.0 {
        willSet {
            print("Will change balance from \(balance) to \(newValue)")
        }
        didSet {
            print("Did change balance from \(oldValue) to \(balance)")
        }
    }
}

func transact() {
    let acc = Account()
    acc.balance = 100.0
    acc.balance = 250.0
}

transact()
