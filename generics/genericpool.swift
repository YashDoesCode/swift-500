class ObjectPool<T> {
    private var pool: [T] = []
    private let factory: () -> T

    init(factory: @escaping () -> T) {
        self.factory = factory
    }

    func acquire() -> T {
        return pool.popLast() ?? factory()
    }

    func release(_ item: T) {
        pool.append(item)
    }
}

func pool() {
    let p = ObjectPool<String> { "NewObject" }
    let obj = p.acquire()
    print("Acquired:", obj)
    p.release(obj)
}

pool()
