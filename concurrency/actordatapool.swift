actor DataPool {
    private var pool: [String] = ["A", "B", "C"]

    func take() -> String? {
        guard !pool.isEmpty else { return nil }
        return pool.removeFirst()
    }
}

func pool() async {
    let dp = DataPool()
    print("Taken:", await dp.take() ?? "none")
}

await pool()
