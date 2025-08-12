protocol KeyedContainer {
    associatedtype Key: Hashable
    associatedtype Value
    subscript(key: Key) -> Value? { get }
}

struct SimpleMap: KeyedContainer {
    typealias Key = String
    typealias Value = Int
    var storage: [String: Int] = [:]

    subscript(key: String) -> Int? {
        return storage[key]
    }
}

func lookup() {
    let map = SimpleMap(storage: ["a": 100])
    print("Key a:", map["a"] ?? 0)
}

lookup()
