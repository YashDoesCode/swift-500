protocol Tracker: AnyObject {
    var tickCount: Int { get set }
    func tick()
}

class SessionTracker: Tracker {
    var tickCount: Int = 0
    func tick() {
        tickCount += 1
    }
}

func track() {
    let t: Tracker = SessionTracker()
    t.tick()
    t.tick()
    print("Ticks:", t.tickCount)
}

track()
