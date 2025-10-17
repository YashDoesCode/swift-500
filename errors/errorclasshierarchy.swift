class BaseError: Error {
    let message: String
    init(message: String) { self.message = message }
}

class DatabaseError: BaseError {
    let query: String
    init(message: String, query: String) {
        self.query = query
        super.init(message: message)
    }
}

func query() throws {
    throw DatabaseError(message: "Syntax Error", query: "SELECT *")
}

func execute() {
    do {
        try query()
    } catch let err as DatabaseError {
        print("DB Error:", err.message, "in query:", err.query)
    } catch {
        print("Base error caught")
    }
}

execute()
