struct FileSystemError: Error {
    let path: String
    let code: Int
}

func openFile(path: String) throws {
    throw FileSystemError(path: path, code: 404)
}

func open() {
    do {
        try openFile(path: "/data/config.json")
    } catch let err as FileSystemError {
        print("File error at", err.path, "code:", err.code)
    } catch {
        print("Unknown error")
    }
}

open()
