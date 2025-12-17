actor LockManager {
    private var activeLocks: Set<String> = []

    func acquire(id: String) -> Bool {
        return activeLocks.insert(id).inserted
    }
}

func acquire() async {
    let lm = LockManager()
    print("Acquired lock 1:", await lm.acquire(id: "res-A"))
    print("Acquired lock 2:", await lm.acquire(id: "res-A"))
}

await acquire()
