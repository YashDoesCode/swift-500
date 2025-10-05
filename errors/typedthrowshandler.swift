enum ConfigError: Error {
    case missingKey(String)
}

func loadKey(key: String) throws(ConfigError) -> String {
    if key == "PORT" { return "8080" }
    throw ConfigError.missingKey(key)
}

func configure() {
    do {
        let port = try loadKey(key: "HOST")
        print("Port:", port)
    } catch ConfigError.missingKey(let key) {
        print("Config missing key:", key)
    } catch {
        print("Other config error")
    }
}

configure()
