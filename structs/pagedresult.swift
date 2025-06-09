struct Page<T> {
    let items: [T]
    let pageIndex: Int
    let totalPages: Int

    var hasNext: Bool {
        return pageIndex < totalPages - 1
    }
}

func paginate() {
    let page = Page(items: ["a", "b"], pageIndex: 0, totalPages: 5)
    print("Has next page:", page.hasNext)
}

paginate()
