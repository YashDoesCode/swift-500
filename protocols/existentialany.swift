protocol Printable {
    func text() -> String
}

struct TextMsg: Printable {
    let content: String
    func text() -> String { return content }
}

func display(items: [any Printable]) {
    for item in items {
        print("Item:", item.text())
    }
}

func display() {
    let list: [any Printable] = [TextMsg(content: "One"), TextMsg(content: "Two")]
    display(items: list)
}

display()
