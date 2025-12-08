func fetchFirst() async -> Int { return 10 }
func fetchSecond() async -> Int { return 20 }

func compute() async {
    async let a = fetchFirst()
    async let b = fetchSecond()
    let sum = await (a + b)
    print("Async let sum:", sum)
}

await compute()
