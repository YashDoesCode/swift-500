func fetchMessage() async -> String {
    return "Hello from Async Swift"
}

func run() async {
    let msg = await fetchMessage()
    print(msg)
}

await run()
