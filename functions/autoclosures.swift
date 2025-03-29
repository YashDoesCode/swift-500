struct AssertEngine {
    func evaluate(condition: @autoclosure () -> Bool, message: String) {
        if !condition() {
            print("Assertion failed:", message)
        } else {
            print("Assertion passed")
        }
    }
}

func evaluate() {
    let engine = AssertEngine()
    engine.evaluate(condition: 5 > 3, message: "Five is greater than three")
    engine.evaluate(condition: 2 > 10, message: "Two is greater than ten")
}

evaluate()
