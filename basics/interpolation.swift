struct Banner {
    let title: String
    let year: Int
    let version: Double

    func render() -> String {
        return """
        === \(title) ===
        Year: \(year)
        Version: \(version)
        Status: Active
        """
    }
}

func render() {
    let banner = Banner(title: "Language Tour", year: 2026, version: 6.4)
    print(banner.render())
}

render()
