protocol Service {
    func start()
    func stop()
}

class DatabaseService: Service {
    func start() { print("DB Service Started") }
    func stop() { print("DB Service Stopped") }
}

func serve() {
    let s: Service = DatabaseService()
    s.start()
    s.stop()
}

serve()
