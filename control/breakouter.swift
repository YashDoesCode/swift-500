struct GridNavigator {
    func locateFirst(target: Int, grid: [[Int]]) -> (Int, Int)? {
        search: for (rowIndex, row) in grid.enumerated() {
            for (colIndex, val) in row.enumerated() {
                if val == target {
                    return (rowIndex, colIndex)
                }
            }
        }
        return nil
    }
}

func locate() {
    let nav = GridNavigator()
    let grid = [
        [1, 2, 3],
        [4, 5, 6],
        [7, 8, 9]
    ]
    if let (r, c) = nav.locateFirst(target: 5, grid: grid) {
        print("Found target 5 at row \(r), col \(c)")
    }
}

locate()
