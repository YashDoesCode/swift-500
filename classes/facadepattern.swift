class CPU { func boot() { print("CPU Booted") } }
class Memory { func load() { print("Memory Loaded") } }
class Disk { func read() { print("Disk Read") } }

class ComputerFacade {
    let cpu = CPU()
    let memory = Memory()
    let disk = Disk()

    func start() {
        cpu.boot()
        memory.load()
        disk.read()
        print("Computer ready")
    }
}

func boot() {
    let comp = ComputerFacade()
    comp.start()
}

boot()
