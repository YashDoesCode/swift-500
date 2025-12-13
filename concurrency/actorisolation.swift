actor Counter {
    var count: Int = 0

    func increment() {
        count += 1
    }
}

func isolate() async {
    let c = Counter()
    await c.increment()
    print("Count:", await c.count)
}

await isolate()
