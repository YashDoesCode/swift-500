class RealImage {
    let filename: String
    init(filename: String) {
        self.filename = filename
        load()
    }
    func load() { print("Loading heavy image:", filename) }
    func display() { print("Displaying image:", filename) }
}

class ImageProxy {
    let filename: String
    private var realImage: RealImage?

    init(filename: String) { self.filename = filename }

    func display() {
        if realImage == nil {
            realImage = RealImage(filename: filename)
        }
        realImage?.display()
    }
}

func proxy() {
    let p = ImageProxy(filename: "pic.png")
    print("Proxy initialized")
    p.display()
}

proxy()
