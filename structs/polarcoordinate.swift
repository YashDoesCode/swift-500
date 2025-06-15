import Foundation

struct PolarPoint {
    let radius: Double
    let angleRadians: Double

    func toCartesian() -> (x: Double, y: Double) {
        let x = radius * cos(angleRadians)
        let y = radius * sin(angleRadians)
        return (x, y)
    }
}

func locate() {
    let p = PolarPoint(radius: 10.0, angleRadians: 0.0)
    let cart = p.toCartesian()
    print("Cartesian:", cart.x, cart.y)
}

locate()
