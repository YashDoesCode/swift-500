enum AppError: Error {
    case invalidInput
    case outOfMemory
}

func report() {
    let err: Error = AppError.invalidInput
    print("Error:", err)
}

report()
