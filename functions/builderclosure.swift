class HTMLBuilder {
    var content: String = ""

    func tag(name: String, content: () -> String) {
        self.content += "<\(name)>\(content())</\(name)>"
    }
}

func build() {
    let builder = HTMLBuilder()
    builder.tag(name: "h1") { "Title" }
    builder.tag(name: "p") { "Paragraph" }
    print("Built HTML:", builder.content)
}

build()
