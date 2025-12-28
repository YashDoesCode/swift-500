actor ThreadSafeCounter {
    var value: Int = 0

    func increment() {
        value += 1
    }
}

func count() async {
    let c = ThreadSafeCounter()
    await withTaskGroup(of: Void.self) { group in
        for _ in 1...5 {
            group.addTask { await c.increment() }
        }
    }
    print("Final concurrent count:", await c.value)
}

await count()
