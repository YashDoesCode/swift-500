protocol IdentifiableEntity {
    init(id: String)
}

class Record: IdentifiableEntity {
    let id: String
    required init(id: String) {
        self.id = id
    }
}

func instantiate() {
    let rec: IdentifiableEntity = Record(id: "rec_99")
    if let r = rec as? Record {
        print("Record ID:", r.id)
    }
}

instantiate()
