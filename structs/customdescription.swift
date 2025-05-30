struct Book: CustomStringConvertible {
    let title: String
    let author: String
    let pages: Int

    var description: String {
        return "'\(title)' by \(author) (\(pages)p)"
    }
}

func describe() {
    let b = Book(title: "The Swift Language", author: "Apple", pages: 800)
    print(b)
}

describe()
