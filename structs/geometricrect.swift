struct Point {
    var x: Double
    var y: Double
}

struct Size {
    var width: Double
    var height: Double
}

struct Rect {
    var origin: Point
    var size: Size

    var center: Point {
        get {
            return Point(x: origin.x + size.width / 2, y: origin.y + size.height / 2)
        }
        set {
            origin.x = newValue.x - size.width / 2
            origin.y = newValue.y - size.height / 2
        }
    }
}

func reposition() {
    var r = Rect(origin: Point(x: 0, y: 0), size: Size(width: 100, height: 50))
    print("Center:", r.center.x, r.center.y)
    r.center = Point(x: 200, y: 200)
    print("New Origin:", r.origin.x, r.origin.y)
}

reposition()
