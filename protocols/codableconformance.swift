import Foundation

struct Article: Codable {
    let id: Int
    let title: String
}

func encode() {
    let art = Article(id: 10, title: "Protocol Mastery")
    let encoder = JSONEncoder()
    if let data = try? encoder.encode(art), let json = String(data: data, encoding: .utf8) {
        print("JSON:", json)
    }
}

encode()
