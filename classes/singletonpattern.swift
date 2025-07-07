class AppLogger {
    static let shared = AppLogger()
    private var logs: [String] = []

    private init() {}

    func log(message: String) {
        logs.append(message)
        print("AppLogger:", message)
    }
}

func log() {
    AppLogger.shared.log(message: "System boot")
    AppLogger.shared.log(message: "User signin")
}

log()
