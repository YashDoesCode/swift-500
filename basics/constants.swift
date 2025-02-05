struct ImmutableBox {
    let identifier: String
    let payload: Int

    func reveal() {
        print("Box [\(identifier)] contains \(payload)")
    }
}

func reveal() {
    let box = ImmutableBox(identifier: "alpha", payload: 999)
    box.reveal()
}

reveal()
