class BaseProcessor {
    func process(input: String) -> String {
        return "Base: \(input)"
    }
}

class PrefixProcessor: BaseProcessor {
    override func process(input: String) -> String {
        return "[PREFIX] " + super.process(input: input)
    }
}

func process() {
    let proc: BaseProcessor = PrefixProcessor()
    print(proc.process(input: "data"))
}

process()
