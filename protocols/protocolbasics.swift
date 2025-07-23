protocol Describable {
    func describe() -> String
}

struct Book: Describable {
    let title: String
    func describe() -> String {
        return "Book: \(title)"
    }
}

func describe() {
    let d: Describable = Book(title: "Swift 500")
    print(d.describe())
}

describe()
