struct Registry {
    let table: [String: String] = ["US": "United States", "CA": "Canada", "UK": "United Kingdom"]

    func lookup(code: String) -> String {
        return table[code, default: "Unknown Country"]
    }
}

func lookup() {
    let reg = Registry()
    print("US:", reg.lookup(code: "US"))
    print("JP:", reg.lookup(code: "JP"))
}

lookup()
