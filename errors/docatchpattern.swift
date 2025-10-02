enum ValidationError: Error {
    case empty
    case tooShort(Int)
}

func validate(input: String) throws {
    if input.isEmpty { throw ValidationError.empty }
    if input.count < 5 { throw ValidationError.tooShort(input.count) }
}

func check() {
    do {
        try validate(input: "abc")
    } catch ValidationError.empty {
        print("Input was empty")
    } catch ValidationError.tooShort(let len) {
        print("Input too short with length:", len)
    } catch {
        print("Other error")
    }
}

check()
