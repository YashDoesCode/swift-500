struct Text {
    let content: String

    func inspect() {
        print("Length:", content.count)
        print("Uppercase:", content.uppercased())
        print("Lowercase:", content.lowercased())
        print("Empty:", content.isEmpty)
    }
}

func inspect() {
    let text = Text(content: "Swift Programming")
    text.inspect()
}

inspect()
