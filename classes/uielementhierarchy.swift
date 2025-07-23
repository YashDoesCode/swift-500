class UIElement {
    var visible: Bool = true
    func render() { print("UIElement render") }
}

class UIButton: UIElement {
    var title: String = "Submit"
    override func render() { print("UIButton [\(title)] render") }
}

func render() {
    let elem: UIElement = UIButton()
    elem.render()
}

render()
