struct Pipeline<Input, Output> {
    let transform: (Input) -> Output

    func execute(input: Input) -> Output {
        return transform(input)
    }
}

func pipe() {
    let p = Pipeline<Int, String> { "Count is \($0)" }
    print(p.execute(input: 5))
}

pipe()
