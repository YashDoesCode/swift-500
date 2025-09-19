class BaseProcessor<Input, Output> {
    func process(input: Input) -> Output? {
        return nil
    }
}

class StringToIntProcessor: BaseProcessor<String, Int> {
    override func process(input: String) -> Int? {
        return Int(input)
    }
}

func process() {
    let p: BaseProcessor<String, Int> = StringToIntProcessor()
    print("Processed:", p.process(input: "123") ?? -1)
}

process()
