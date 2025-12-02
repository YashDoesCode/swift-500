func cooperative() async {
    await Task.yield()
    print("Yield completed")
}

await cooperative()
