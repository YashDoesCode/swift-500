struct Stepper {
    func step() {
        for tick in stride(from: 0, to: 10, by: 2) {
            print("Tick:", tick)
        }
    }
}

func step() {
    let stepper = Stepper()
    stepper.step()
}

step()
