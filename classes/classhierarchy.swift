class Entity {
    let id: String
    init(id: String) { self.id = id }
}

class LivingEntity: Entity {
    var health: Int
    init(id: String, health: Int) {
        self.health = health
        super.init(id: id)
    }
}

class PlayerEntity: LivingEntity {
    let name: String
    init(id: String, health: Int, name: String) {
        self.name = name
        super.init(id: id, health: health)
    }
}

func inspect() {
    let p = PlayerEntity(id: "e-1", health: 100, name: "Hero")
    print("Player:", p.name, "Health:", p.health, "ID:", p.id)
}

inspect()
