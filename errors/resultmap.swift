func getNumber() -> Result<Int, Error> {
    return .success(21)
}

func transform() {
    let mapped = getNumber().map { $0 * 2 }
    if case .success(let val) = mapped {
        print("Mapped result:", val)
    }
}

transform()
