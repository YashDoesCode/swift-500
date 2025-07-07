class Session {
    let token: String
    init(token: String) { self.token = token }
}

func verify() {
    let objects: [AnyObject] = [Session(token: "tok_123"), Session(token: "tok_456")]
    for obj in objects {
        if let s = obj as? Session {
            print("Session token:", s.token)
        }
    }
}

verify()
