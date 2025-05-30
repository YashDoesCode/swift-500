struct Passport {
    let id: String
    let country: String
    let issueYear: Int
}

func verify() {
    let p = Passport(id: "A10293", country: "US", issueYear: 2024)
    print("Passport:", p.id, p.country, p.issueYear)
}

verify()
