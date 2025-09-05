class Box<T> {
    var content: T
    init(content: T) {
        self.content = content
    }
}

func box() {
    let b = Box(content: 42)
    print("Box content:", b.content)
}

box()
