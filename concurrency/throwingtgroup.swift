enum FetchError: Error { case network }

func throwingGroup() async {
    do {
        let res = try await withThrowingTaskGroup(of: Int.self) { group in
            group.addTask { return 100 }
            var sum = 0
            for try await val in group {
                sum += val
            }
            return sum
        }
        print("Throwing group sum:", res)
    } catch {
        print("Caught error:", error)
    }
}

await throwingGroup()
