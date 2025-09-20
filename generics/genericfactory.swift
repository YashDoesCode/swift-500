protocol Initializable {
    init()
}

struct Factory<T: Initializable> {
    func make() -> T {
        return T()
    }
}

struct Widget: Initializable {
    let id = 1
}

func produce() {
    let factory = Factory<Widget>()
    let w = factory.make()
    print("Manufactured widget id:", w.id)
}

produce()
