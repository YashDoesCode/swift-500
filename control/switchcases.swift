struct Router {
    func route(code: Int) -> String {
        switch code {
        case 200:
            return "OK"
        case 404:
            return "Not Found"
        case 500:
            return "Server Error"
        default:
            return "Unknown"
        }
    }
}

func route() {
    let router = Router()
    print(router.route(code: 200))
    print(router.route(code: 404))
}

route()
