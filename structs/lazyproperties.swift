struct DatabaseConfig {
    let host: String
    lazy var connectionString: String = {
        return "db://\(host):5432/main"
    }()
}

func connect() {
    var config = DatabaseConfig(host: "localhost")
    print("Conn:", config.connectionString)
}

connect()
