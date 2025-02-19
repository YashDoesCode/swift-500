class HeavyLoader {
    init() {
        print("Loader initialized")
    }

    func fetch() -> String {
        return "Loaded Data"
    }
}

class Container {
    lazy var loader = HeavyLoader()
}

func lazyLoad() {
    let box = Container()
    print("Container created")
    print(box.loader.fetch())
}

lazyLoad()
