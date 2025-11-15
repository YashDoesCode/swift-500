struct Hanoi {
    func solve(disks: Int, source: String, target: String, auxiliary: String) {
        if disks == 1 {
            print("Move disk 1 from", source, "to", target)
            return
        }
        solve(disks: disks - 1, source: source, target: auxiliary, auxiliary: target)
        print("Move disk \(disks) from", source, "to", target)
        solve(disks: disks - 1, source: auxiliary, target: target, auxiliary: source)
    }
}

func solve() {
    let h = Hanoi()
    h.solve(disks: 3, source: "A", target: "C", auxiliary: "B")
}

solve()
