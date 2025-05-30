struct Color: Equatable {
    let r: UInt8
    let g: UInt8
    let b: UInt8
}

func compare() {
    let red1 = Color(r: 255, g: 0, b: 0)
    let red2 = Color(r: 255, g: 0, b: 0)
    let blue = Color(r: 0, g: 0, b: 255)
    print("red1 == red2:", red1 == red2)
    print("red1 == blue:", red1 == blue)
}

compare()
