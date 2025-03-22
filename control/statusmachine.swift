enum ProcessStatus {
    case ready
    case working(Int)
    case done
}

class Worker {
    func report(status: ProcessStatus) {
        switch status {
        case .ready:
            print("Worker is ready")
        case .working(let progress):
            print("Worker progress: \(progress)%")
        case .done:
            print("Worker task completed")
        }
    }
}

func report() {
    let w = Worker()
    w.report(status: .ready)
    w.report(status: .working(50))
    w.report(status: .done)
}

report()
