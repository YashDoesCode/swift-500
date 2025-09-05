protocol SequenceContainer {
    associatedtype Seq: Sequence where Seq.Element: Comparable
    var sequence: Seq { get }
}

struct OrderedNumbers: SequenceContainer {
    let sequence = [10, 5, 20, 1]
}

func evaluate() {
    let on = OrderedNumbers()
    print("Sorted sequence:", on.sequence.sorted())
}

evaluate()
