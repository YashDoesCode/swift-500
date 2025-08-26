protocol Transformable {
    associatedtype Output
    func transform() -> Output
}

struct IntToString: Transformable {
    let number: Int
    func transform() -> String {
        return "Number: \(number)"
    }
}

func transform() {
    let t = IntToString(number: 42)
    print(t.transform())
}

transform()
