class HardwareError: Error {
    func code() -> Int { return 0 }
}

class SensorError: HardwareError {
    override func code() -> Int { return 101 }
}

func checkSensor() throws {
    throw SensorError()
}

func inspect() {
    do {
        try checkSensor()
    } catch let hw as HardwareError {
        print("Hardware error code:", hw.code())
    } catch {
        print("Generic error")
    }
}

inspect()
