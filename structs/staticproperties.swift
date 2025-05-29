struct AppConfig {
    static let maxRetries = 3
    static let timeoutSeconds = 30
    static var environment = "production"
}

func inspect() {
    print("Retries:", AppConfig.maxRetries)
    print("Timeout:", AppConfig.timeoutSeconds)
    print("Env:", AppConfig.environment)
}

inspect()
