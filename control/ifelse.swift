struct Evaluator {
    func evaluate(score: Int) -> String {
        if score >= 90 {
            return "Excellent"
        } else if score >= 75 {
            return "Good"
        } else {
            return "Pass"
        }
    }
}

func evaluate() {
    let eval = Evaluator()
    print(eval.evaluate(score: 82))
}

evaluate()
