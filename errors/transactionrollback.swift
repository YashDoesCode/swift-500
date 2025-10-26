enum TxError: Error { case outOfFunds }

class Account {
    var balance: Int = 100

    func transfer(amount: Int) throws {
        let initial = balance
        balance -= amount
        if balance < 0 {
            balance = initial
            throw TxError.outOfFunds
        }
    }
}

func transact() {
    let acc = Account()
    do {
        try acc.transfer(amount: 150)
    } catch {
        print("Transfer failed, rolled back balance:", acc.balance)
    }
}

transact()
