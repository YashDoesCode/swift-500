struct Dispatcher {
    var routes: [String: () -> String] = [:]

    mutating func register(route: String, handler: @escaping () -> String) {
        routes[route] = handler
    }

    func dispatch(route: String) -> String {
        return routes[route]?() ?? "404 Not Found"
    }
}

func dispatch() {
    var d = Dispatcher()
    d.register(route: "/home") { "Home Page" }
    d.register(route: "/about") { "About Page" }
    print(d.dispatch(route: "/home"))
    print(d.dispatch(route: "/contact"))
}

dispatch()
