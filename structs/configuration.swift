struct DatabaseOptions {
    var poolSize: Int = 10
    var timeout: Double = 5.0
    var logging: Bool = false
}

func configure() {
    var opt = DatabaseOptions()
    opt.poolSize = 25
    opt.logging = true
    print("Pool size:", opt.poolSize, "Logging:", opt.logging)
}

configure()
