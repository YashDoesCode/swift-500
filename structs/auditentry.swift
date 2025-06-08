struct AuditEntry {
    let timestamp: Int
    let actor: String
    let action: String
}

func log() {
    let entry = AuditEntry(timestamp: 1700000000, actor: "admin", action: "DEPLOY")
    print("Audit:", entry.timestamp, entry.actor, entry.action)
}

log()
