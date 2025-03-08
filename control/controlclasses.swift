class Controller {
    func handle(code: Int) -> String {
        return "Base handler for \(code)"
    }
}

class WebController: Controller {
    override func handle(code: Int) -> String {
        guard code >= 200 && code < 300 else {
            return "HTTP Error \(code)"
        }
        return "HTTP Success \(code)"
    }
}

func handle() {
    let ctrl: Controller = WebController()
    print(ctrl.handle(code: 200))
    print(ctrl.handle(code: 404))
}

handle()
