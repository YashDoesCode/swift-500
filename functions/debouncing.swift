class CounterSink {
    var count: Int = 0

    func emit(action: (Int) -> Void) {
        count += 1
        action(count)
    }
}

func debounce() {
    let sink = CounterSink()
    sink.emit { print("Emitted event #\($0)") }
    sink.emit { print("Emitted event #\($0)") }
}

debounce()
