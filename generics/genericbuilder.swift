class Builder<T> {
    private var value: T

    init(initial: T) {
        self.value = initial
    }

    func mutate(_ transform: (inout T) -> Void) -> Builder<T> {
        transform(&value)
        return self
    }

    func build() -> T {
        return value
    }
}

struct Person {
    var name: String = ""
    var age: Int = 0
}

func build() {
    let p = Builder(initial: Person())
        .mutate { $0.name = "Ada" }
        .mutate { $0.age = 36 }
        .build()
    print("Built person:", p.name, p.age)
}

build()
