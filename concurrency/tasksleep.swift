func pause() async {
    print("Before sleep")
    try? await Task.sleep(nanoseconds: 10_000_000)
    print("After sleep")
}

await pause()
