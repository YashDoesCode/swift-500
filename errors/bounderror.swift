enum ArrayError: Error {
    case indexOutOfBounds(requested: Int, size: Int)
}

func safeGet(array: [Int], index: Int) throws -> Int {
    guard index >= 0 && index < array.count else {
        throw ArrayError.indexOutOfBounds(requested: index, size: array.count)
    }
    return array[index]
}

func get() {
    do {
        let _ = try safeGet(array: [1, 2, 3], index: 10)
    } catch ArrayError.indexOutOfBounds(let req, let size) {
        print("Out of bounds: requested \(req) in size \(size)")
    } catch {
        print("Array error")
    }
}

get()
