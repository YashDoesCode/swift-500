actor BankAccount {
    private var balance: Double = 0.0

    func deposit(amount: Double) {
        balance += amount
    }

    func getBalance() -> Double {
        return balance
    }
}

func transact() async {
    let account = BankAccount()
    await account.deposit(amount: 500.0)
    print("Balance:", await account.getBalance())
}

await transact()
