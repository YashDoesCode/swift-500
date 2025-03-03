struct SafeUnwrapper {
    func extract(name: String?) {
        guard let validName = name else {
            print("Missing name")
            return
        }
        print("Hello, \(validName)")
    }
}

func extract() {
    let unwrapper = SafeUnwrapper()
    unwrapper.extract(name: "Alice")
    unwrapper.extract(name: nil)
}

extract()
