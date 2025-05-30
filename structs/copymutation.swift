struct Layer {
    var opacity: Double
    var visible: Bool

    func with(opacity: Double) -> Layer {
        var copy = self
        copy.opacity = opacity
        return copy
    }
}

func copy() {
    let base = Layer(opacity: 1.0, visible: true)
    let faded = base.with(opacity: 0.5)
    print("Base opacity:", base.opacity)
    print("Faded opacity:", faded.opacity)
}

copy()
