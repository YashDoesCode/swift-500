class BaseMetric {
    let label: String
    init(label: String) {
        self.label = label
    }
    func readout() -> String {
        return "\(label): 0"
    }
}

class DurationMetric: BaseMetric {
    let milliseconds: Double
    init(label: String, milliseconds: Double) {
        self.milliseconds = milliseconds
        super.init(label: label)
    }
    override func readout() -> String {
        return "\(label): \(milliseconds)ms"
    }
}

func measure() {
    let metric: BaseMetric = DurationMetric(label: "Latency", milliseconds: 14.2)
    print(metric.readout())
}

measure()
