protocol Transformer {
    associatedtype Input
    associatedtype Output
    func transform(_ input: Input) -> Output
}

struct Doubler: Transformer {
    func transform(_ input: Int) -> Int {
        return input * 2
    }
}

func transform() {
    let d = Doubler()
    print("Transformed:", d.transform(21))
}

transform()
