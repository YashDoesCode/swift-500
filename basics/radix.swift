struct RadixConverter {
    func convert(value: Int) {
        let bin = String(value, radix: 2)
        let oct = String(value, radix: 8)
        let hex = String(value, radix: 16)
        print("Decimal:", value)
        print("Binary:", bin)
        print("Octal:", oct)
        print("Hex:", hex)
    }
}

func convert() {
    let converter = RadixConverter()
    converter.convert(value: 255)
}

convert()
