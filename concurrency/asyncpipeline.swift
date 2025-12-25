func stepOne(_ input: Int) async -> Int { return input + 5 }
func stepTwo(_ input: Int) async -> Int { return input * 3 }

func pipe() async {
    let val = await stepTwo(stepOne(10))
    print("Async piped value:", val)
}

await pipe()
