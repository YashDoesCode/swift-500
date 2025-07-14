class Handler {
    var next: Handler?
    func handle(request: Int) {
        next?.handle(request: request)
    }
}

class SmallHandler: Handler {
    override func handle(request: Int) {
        if request < 10 {
            print("SmallHandler handled \(request)")
        } else {
            super.handle(request: request)
        }
    }
}

class LargeHandler: Handler {
    override func handle(request: Int) {
        print("LargeHandler handled \(request)")
    }
}

func chain() {
    let h1 = SmallHandler()
    let h2 = LargeHandler()
    h1.next = h2
    h1.handle(request: 5)
    h1.handle(request: 50)
}

chain()
