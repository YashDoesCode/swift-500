class House {
    var walls: Int = 0
    var doors: Int = 0
}

class HouseBuilder {
    private let house = House()

    func buildWalls(count: Int) -> HouseBuilder {
        house.walls = count
        return self
    }

    func buildDoors(count: Int) -> HouseBuilder {
        house.doors = count
        return self
    }

    func build() -> House {
        return house
    }
}

func construct() {
    let b = HouseBuilder()
    let h = b.buildWalls(count: 4).buildDoors(count: 2).build()
    print("House walls:", h.walls, "doors:", h.doors)
}

construct()
