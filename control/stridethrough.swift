struct Stepper {
    func step() {
        for tick in stride(from: 0, through: 10, by: 2) {
            print("Through Tick:", tick)
        }
    }
}

func step() {
    let stepper = Stepper()
    stepper.step()
}

step()
