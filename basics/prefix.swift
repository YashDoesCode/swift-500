struct Inspector {
    let path: String

    func check() {
        print("Starts with /usr:", path.hasPrefix("/usr"))
        print("Ends with .swift:", path.hasSuffix(".swift"))
    }
}

func check() {
    let inspector = Inspector(path: "/usr/local/bin/runner.swift")
    inspector.check()
}

check()
