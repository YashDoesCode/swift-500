struct Document {
    let title: String
    let content: String

    func renaming(to newTitle: String) -> Document {
        return Document(title: newTitle, content: self.content)
    }
}

func rename() {
    let doc = Document(title: "Draft", content: "Notes")
    let published = doc.renaming(to: "Published")
    print("Doc title:", doc.title)
    print("Published title:", published.title)
}

rename()
