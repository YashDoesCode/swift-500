struct TextJoiner {
    func process(csv: String) -> String {
        let parts = csv.split(separator: ",")
        return parts.joined(separator: " - ")
    }
}

func process() {
    let tj = TextJoiner()
    print("Joined:", tj.process(csv: "red,green,blue"))
}

process()
