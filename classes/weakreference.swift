class Apartment {
    let unit: String
    weak var tenant: Tenant?

    init(unit: String) {
        self.unit = unit
    }
}

class Tenant {
    let name: String
    var apartment: Apartment?

    init(name: String) {
        self.name = name
    }
}

func link() {
    let t = Tenant(name: "Alice")
    let apt = Apartment(unit: "4B")
    t.apartment = apt
    apt.tenant = t
    print("Tenant in apt:", apt.tenant?.name ?? "none")
}

link()
