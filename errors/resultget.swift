func produceResult() -> Result<String, Error> {
    return .success("Hello Result")
}

func retrieve() {
    do {
        let value = try produceResult().get()
        print("Retrieved via get():", value)
    } catch {
        print("Error:", error)
    }
}

retrieve()
