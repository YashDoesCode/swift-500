struct RGBAColor {
    let red: Double
    let green: Double
    let blue: Double
    let alpha: Double

    static let white = RGBAColor(red: 1, green: 1, blue: 1, alpha: 1)
    static let black = RGBAColor(red: 0, green: 0, blue: 0, alpha: 1)
}

func inspect() {
    print("White R:", RGBAColor.white.red)
    print("Black R:", RGBAColor.black.red)
}

inspect()
