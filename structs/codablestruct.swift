import Foundation

struct User: Codable {
    let id: Int
    let username: String
}

func serialize() {
    let u = User(id: 1, username: "yash")
    let encoder = JSONEncoder()
    if let data = try? encoder.encode(u), let json = String(data: data, encoding: .utf8) {
        print("JSON:", json)
    }
}

serialize()
