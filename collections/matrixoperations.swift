struct Matrix {
    let grid: [[Int]]

    func transpose() -> [[Int]] {
        guard !grid.isEmpty else { return [] }
        let rowCount = grid.count
        let colCount = grid[0].count
        var result = Array(repeating: Array(repeating: 0, count: rowCount), count: colCount)
        for r in 0..<rowCount {
            for c in 0..<colCount {
                result[c][r] = grid[r][c]
            }
        }
        return result
    }
}

func transpose() {
    let m = Matrix(grid: [
        [1, 2, 3],
        [4, 5, 6]
    ])
    print("Transposed:", m.transpose())
}

transpose()
