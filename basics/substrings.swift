struct Slicer {
    let message: String = "Hello, Swift World!"

    func slice() {
        let commaIndex = message.firstIndex(of: ",") ?? message.endIndex
        let greeting = message[..<commaIndex]
        print("Prefix slice:", greeting)
        let suffix = message[message.index(after: commaIndex)...].drop(while: { $0 == " " })
        print("Suffix slice:", suffix)
    }
}

func slice() {
    let slicer = Slicer()
    slicer.slice()
}

slice()
