class ErrorCollector {
    var errors: [Error] = []

    func collect(action: () throws -> Void) {
        do {
            try action()
        } catch {
            errors.append(error)
        }
    }
}

enum TaskError: Error { case itemFailed }

func collect() {
    let collector = ErrorCollector()
    collector.collect { throw TaskError.itemFailed }
    collector.collect { print("Success task") }
    print("Collected errors:", collector.errors.count)
}

collect()
