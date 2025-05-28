struct Rectangle {
    var width: Double
    var height: Double

    var area: Double {
        return width * height
    }

    var perimeter: Double {
        return 2 * (width + height)
    }
}

func compute() {
    let r = Rectangle(width: 5.0, height: 10.0)
    print("Area:", r.area)
    print("Perimeter:", r.perimeter)
}

compute()
