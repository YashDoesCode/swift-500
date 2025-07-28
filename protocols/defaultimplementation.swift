protocol Greetable {
    var name: String { get }
    func salute() -> String
}

extension Greetable {
    func salute() -> String {
        return "Greetings, \(name)!"
    }
}

struct Guest: Greetable {
    let name: String
}

func greet() {
    let guest = Guest(name: "Ada")
    print(guest.salute())
}

greet()
