class Component {
    let identifier: String
    required init(identifier: String) {
        self.identifier = identifier
    }
}

class ButtonComponent: Component {
    var title: String = "Click"
    required init(identifier: String) {
        super.init(identifier: identifier)
    }
}

func construct() {
    let btn = ButtonComponent(identifier: "btn-01")
    print("Component:", btn.identifier, btn.title)
}

construct()
