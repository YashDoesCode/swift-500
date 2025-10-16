enum DiskError: Error {
    case diskFull
    case readOnly
}

func writeData(bytes: Int) throws {
    if bytes > 1000 { throw DiskError.diskFull }
}

func write() {
    do {
        try writeData(bytes: 5000)
    } catch {
        print("Disk write error:", error)
    }
}

write()
