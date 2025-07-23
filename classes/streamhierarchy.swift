class DataStream {
    func read() -> String { return "" }
}

class FileStream: DataStream {
    let path: String
    init(path: String) { self.path = path }
    override func read() -> String { return "Data from \(path)" }
}

func stream() {
    let s: DataStream = FileStream(path: "/var/log/app.log")
    print(s.read())
}

stream()
