class BaseStore {
    var records: [String] = []

    func store(record: String) {
        records.append(record)
    }
}

class TaggedStore: BaseStore {
    let tag: String

    init(tag: String) {
        self.tag = tag
        super.init()
    }

    override func store(record: String) {
        super.store(record: "[\(tag)] \(record)")
    }
}

func store() {
    let ts = TaggedStore(tag: "AUDIT")
    ts.store(record: "Login")
    print("Stored records:", ts.records)
}

store()
