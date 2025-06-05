@dynamicMemberLookup
struct DynamicRecord {
    var fields: [String: String] = [:]

    subscript(dynamicMember member: String) -> String {
        return fields[member, default: "N/A"]
    }
}

func lookup() {
    let rec = DynamicRecord(fields: ["title": "Compiler", "status": "Ready"])
    print("Title:", rec.title)
    print("Status:", rec.status)
    print("Unknown:", rec.missing)
}

lookup()
