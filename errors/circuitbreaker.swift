enum CircuitError: Error { case open }

class CircuitBreaker {
    var failures = 0
    let threshold = 3

    func execute(action: () throws -> Void) throws {
        guard failures < threshold else { throw CircuitError.open }
        do {
            try action()
            failures = 0
        } catch {
            failures += 1
            throw error
        }
    }
}

func test() {
    let breaker = CircuitBreaker()
    print("Breaker threshold:", breaker.threshold)
}

test()
