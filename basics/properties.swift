struct CircleStruct {
    var radius: Double

    var diameter: Double {
        get {
            return radius * 2
        }
        set {
            radius = newValue / 2
        }
    }

    var area: Double {
        return 3.1415926535 * radius * radius
    }
}

func compute() {
    var c = CircleStruct(radius: 5.0)
    print("Radius:", c.radius, "Diameter:", c.diameter, "Area:", c.area)
    c.diameter = 20.0
    print("New Radius:", c.radius, "New Area:", c.area)
}

compute()
