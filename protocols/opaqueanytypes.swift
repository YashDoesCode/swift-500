protocol Shape {
    func draw() -> String
}

struct Circle: Shape {
    func draw() -> String { return "Circle" }
}

func makeShape() -> some Shape {
    return Circle()
}

func render() {
    let s = makeShape()
    print("Rendered:", s.draw())
}

render()
