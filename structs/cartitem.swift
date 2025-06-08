struct CartItem {
    let sku: String
    let unitPrice: Double
    var quantity: Int

    var total: Double {
        return unitPrice * Double(quantity)
    }
}

func calculate() {
    let item = CartItem(sku: "SKU-99", unitPrice: 24.50, quantity: 3)
    print("Cart Total:", item.total)
}

calculate()
