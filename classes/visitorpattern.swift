class Element {
    func accept(visitor: Visitor) {}
}

class ConcreteElement: Element {
    override func accept(visitor: Visitor) {
        visitor.visit(element: self)
    }
}

class Visitor {
    func visit(element: ConcreteElement) {
        print("Visitor visited ConcreteElement")
    }
}

func visit() {
    let elem = ConcreteElement()
    let v = Visitor()
    elem.accept(visitor: v)
}

visit()
