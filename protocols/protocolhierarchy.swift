protocol Reader {
    func read() -> String
}

protocol Writer {
    func write(data: String)
}

protocol ReadWriter: Reader, Writer {}

class FileBuffer: ReadWriter {
    private var data: String = ""

    func write(data: String) {
        self.data = data
    }

    func read() -> String {
        return data
    }
}

func buffer() {
    let fb: ReadWriter = FileBuffer()
    fb.write(data: "Buffered payload")
    print("Read buffer:", fb.read())
}

buffer()
