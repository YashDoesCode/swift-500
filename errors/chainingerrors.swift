enum SubSystemError: Error {
    case network
    case wrapped(Error)
}

func trigger() throws {
    do {
        throw SubSystemError.network
    } catch {
        throw SubSystemError.wrapped(error)
    }
}

func chain() {
    do {
        try trigger()
    } catch SubSystemError.wrapped(let original) {
        print("Wrapped error original:", original)
    } catch {
        print("Other error")
    }
}

chain()
