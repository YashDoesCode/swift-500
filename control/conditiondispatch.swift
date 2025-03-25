class HandlerBase {
    func dispatch(code: Int) {
        print("Base handler:", code)
    }
}

class FastHandler: HandlerBase {
    override func dispatch(code: Int) {
        if code > 100 {
            print("FastHandler handled:", code)
        } else {
            super.dispatch(code: code)
        }
    }
}

func dispatch() {
    let handler: HandlerBase = FastHandler()
    handler.dispatch(code: 150)
    handler.dispatch(code: 50)
}

dispatch()
