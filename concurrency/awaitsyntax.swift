func computeSquare(n: Int) async -> Int {
    return n * n
}

func evaluate() async {
    let val = await computeSquare(n: 12)
    print("Square:", val)
}

await evaluate()
