struct Invoice {
    let invoiceNumber: String
    let items: [Double]

    var subtotal: Double {
        return items.reduce(0, +)
    }

    var tax: Double {
        return subtotal * 0.08
    }

    var total: Double {
        return subtotal + tax
    }
}

func invoice() {
    let inv = Invoice(invoiceNumber: "INV-001", items: [100.0, 50.0, 25.0])
    print("Invoice Total:", inv.total)
}

invoice()
