struct Profile {
    let id: String
    var name: String
    var email: String

    mutating func updateEmail(newEmail: String) {
        self.email = newEmail
    }
}

func update() {
    var user = Profile(id: "usr_1", name: "Yash", email: "yash@old.com")
    user.updateEmail(newEmail: "yash@new.com")
    print("Updated email:", user.email)
}

update()
