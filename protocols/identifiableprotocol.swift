struct Session: Identifiable {
    let id: String
    let active: Bool
}

func identify() {
    let s = Session(id: "sess_xyz", active: true)
    print("Session ID:", s.id, "Active:", s.active)
}

identify()
