protocol Metric {
    var raw: Double { get }
}

struct Latency: Metric {
    let raw: Double
}

func printStatic(m: some Metric) {
    print("Static metric:", m.raw)
}

func printDynamic(m: any Metric) {
    print("Dynamic metric:", m.raw)
}

func evaluate() {
    let l = Latency(raw: 12.5)
    printStatic(m: l)
    printDynamic(m: l)
}

evaluate()
