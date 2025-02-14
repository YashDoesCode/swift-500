struct Padder {
    func pad(number: Int, length: Int) -> String {
        let text = String(number)
        let count = max(0, length - text.count)
        return String(repeating: "0", count: count) + text
    }
}

func pad() {
    let padder = Padder()
    print(padder.pad(number: 7, length: 4))
    print(padder.pad(number: 42, length: 4))
    print(padder.pad(number: 1024, length: 4))
}

pad()
