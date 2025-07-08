class Graphic {
    func render() {}
}

class Line: Graphic {
    override func render() {
        print("Rendering Line")
    }
}

class Picture: Graphic {
    private var graphics: [Graphic] = []

    func add(g: Graphic) {
        graphics.append(g)
    }

    override func render() {
        print("Picture rendering components:")
        for g in graphics {
            g.render()
        }
    }
}

func composite() {
    let pic = Picture()
    pic.add(g: Line())
    pic.add(g: Line())
    pic.render()
}

composite()
