class Shape {}
class Circle: Shape {}
class Square: Shape {}

func inspect() {
    let shapes: [Shape] = [Circle(), Square(), Circle()]
    var circles = 0
    for s in shapes {
        if s is Circle {
            circles += 1
        }
    }
    print("Total circles:", circles)
}

inspect()
