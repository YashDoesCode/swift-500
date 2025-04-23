class AuditLog {
    var entries: [String] = []

    func record(event: String) {
        entries.append(event)
        print("Logged:", event)
    }
}

func log() {
    let audit = AuditLog()
    audit.record(event: "UserLogin")
    audit.record(event: "DataFetch")
}

log()
