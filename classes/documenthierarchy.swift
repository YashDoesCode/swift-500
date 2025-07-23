class Document {
    let title: String
    init(title: String) { self.title = title }
    func export() -> String { return "Title: \(title)" }
}

class PDFDocument: Document {
    let pageCount: Int
    init(title: String, pageCount: Int) {
        self.pageCount = pageCount
        super.init(title: title)
    }
    override func export() -> String { return super.export() + " (\(pageCount) pages)" }
}

func export() {
    let doc: Document = PDFDocument(title: "Report", pageCount: 12)
    print(doc.export())
}

export()
