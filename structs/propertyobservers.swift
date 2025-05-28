struct Volume {
    var level: Int = 0 {
        willSet {
            print("Volume changing to \(newValue)")
        }
        didSet {
            if level > 100 {
                level = 100
            }
            print("Volume set to \(level)")
        }
    }
}

func observe() {
    var v = Volume()
    v.level = 80
    v.level = 150
}

observe()
