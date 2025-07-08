class Beverage {
    func cost() -> Double { return 1.0 }
}

class Coffee: Beverage {
    override func cost() -> Double { return 2.50 }
}

class MilkDecorator: Beverage {
    let beverage: Beverage
    init(beverage: Beverage) { self.beverage = beverage }
    override func cost() -> Double { return beverage.cost() + 0.50 }
}

func decorate() {
    let simpleCoffee = Coffee()
    let latte = MilkDecorator(beverage: simpleCoffee)
    print("Latte cost: $\(latte.cost())")
}

decorate()
