struct StageTracker {
    func process(level: Int) {
        switch level {
        case 1:
            print("Level 1 Initialized")
            fallthrough
        case 2:
            print("Level 2 Configured")
            fallthrough
        case 3:
            print("Level 3 Completed")
        default:
            break
        }
    }
}

func process() {
    let tracker = StageTracker()
    tracker.process(level: 1)
}

process()
