protocol Renderable {
    func render() -> String
}

struct HeaderView: Renderable {
    let text: String
    func render() -> String { return "<h1>\(text)</h1>" }
}

struct FooterView: Renderable {
    let text: String
    func render() -> String { return "<footer>\(text)</footer>" }
}

func render() {
    let views: [Renderable] = [HeaderView(text: "Welcome"), FooterView(text: "2026")]
    for v in views {
        print(v.render())
    }
}

render()
