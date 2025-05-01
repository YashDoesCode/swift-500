class Button {
    var onTap: (() -> Void)?

    func tap() {
        print("Button tapped")
        onTap?()
    }
}

func delegate() {
    let btn = Button()
    btn.onTap = {
        print("Handled tap action via closure delegate")
    }
    btn.tap()
}

delegate()
