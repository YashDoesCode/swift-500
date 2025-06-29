class Food {
    let name: String
    init(name: String) {
        self.name = name
    }
}

class RecipeFood: Food {
    let quantity: Int
    init(name: String, quantity: Int) {
        self.quantity = quantity
        super.init(name: name)
    }
}

func prepare() {
    let rf = RecipeFood(name: "Apple", quantity: 3)
    print("Food:", rf.name, "Quantity:", rf.quantity)
}

prepare()
