func processList(numbers: [Int], transform: (Int) throws -> Int) throws -> [Int] {
    var results: [Int] = []
    for n in numbers {
        results.append(try transform(n))
    }
    return results
}

enum TransformError: Error {
    case negativeNotAllowed
}

func transform() {
    do {
        let res = try processList(numbers: [1, 2, 3]) { val in
            if val < 0 { throw TransformError.negativeNotAllowed }
            return val * 10
        }
        print("Transformed:", res)
    } catch {
        print("Transform error:", error)
    }
}

transform()
