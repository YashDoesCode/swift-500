protocol Lifecycle {
    func didLoad()
    func willUnload()
}

class ScreenController: Lifecycle {
    func didLoad() { print("Screen loaded") }
    func willUnload() { print("Screen unloading") }
}

func cycle() {
    let screen: Lifecycle = ScreenController()
    screen.didLoad()
    screen.willUnload()
}

cycle()
