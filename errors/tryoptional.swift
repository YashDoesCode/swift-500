enum DataError: Error {
    case missing
}

func fetchData(present: Bool) throws -> String {
    guard present else { throw DataError.missing }
    return "Payload Data"
}

func retrieve() {
    let success = try? fetchData(present: true)
    let failure = try? fetchData(present: false)
    print("Success:", success ?? "none")
    print("Failure:", failure ?? "none")
}

retrieve()
