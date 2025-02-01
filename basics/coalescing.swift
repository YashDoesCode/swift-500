struct Profile {
    let username: String?
    let nickname: String?

    func display() -> String {
        return nickname ?? username ?? "Anonymous"
    }
}

func display() {
    let full = Profile(username: "yash", nickname: "dev")
    let partial = Profile(username: "coder", nickname: nil)
    let empty = Profile(username: nil, nickname: nil)
    print(full.display())
    print(partial.display())
    print(empty.display())
}

display()
