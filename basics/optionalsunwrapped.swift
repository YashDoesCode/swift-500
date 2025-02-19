struct ForceUnwrapper {
    func evaluate(primary: String?, fallback: String) -> String {
        if primary != nil {
            return primary!
        }
        return fallback
    }
}

func evaluate() {
    let unwrapper = ForceUnwrapper()
    print(unwrapper.evaluate(primary: "Configured", fallback: "Default"))
    print(unwrapper.evaluate(primary: nil, fallback: "Default"))
}

evaluate()
