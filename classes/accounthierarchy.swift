class BankAccount {
    var balance: Double
    init(balance: Double) { self.balance = balance }
    func deposit(amount: Double) { balance += amount }
}

class SavingsAccount: BankAccount {
    let interestRate: Double
    init(balance: Double, interestRate: Double) {
        self.interestRate = interestRate
        super.init(balance: balance)
    }
    func applyInterest() { balance += balance * interestRate }
}

func transact() {
    let sav = SavingsAccount(balance: 1000.0, interestRate: 0.05)
    sav.applyInterest()
    print("Savings balance:", sav.balance)
}

transact()
