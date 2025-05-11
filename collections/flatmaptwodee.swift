struct Flattener {
    func flatten(grid: [[Int]]) -> [Int] {
        return grid.flatMap { $0 }
    }
}

func flatten() {
    let fl = Flattener()
    let grid = [[1, 2], [3, 4], [5, 6]]
    print("Flattened:", fl.flatten(grid: grid))
}

flatten()
