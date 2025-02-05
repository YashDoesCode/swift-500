class Residence {
    let rooms: Int = 4
}

class Owner {
    var home: Residence?
}

func check() {
    let owner = Owner()
    print("Initial rooms:", owner.home?.rooms ?? 0)
    owner.home = Residence()
    print("Updated rooms:", owner.home?.rooms ?? 0)
}

check()
