struct SequenceWalker {
    func traverse() {
        var idx = 0
        while idx < 5 {
            print("Index:", idx)
            idx += 1
        }
    }
}

func traverse() {
    let walker = SequenceWalker()
    walker.traverse()
}

traverse()
