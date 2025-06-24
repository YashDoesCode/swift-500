class Speaker {
    func speak() -> String {
        return "Hello"
    }
}

class EchoSpeaker: Speaker {
    override func speak() -> String {
        return "Hello... Hello... Hello..."
    }
}

func speak() {
    let s: Speaker = EchoSpeaker()
    print("Spoken:", s.speak())
}

speak()
