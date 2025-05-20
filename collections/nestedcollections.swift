struct MatrixGrid {
    let data: [[Int]] = [
        [1, 2, 3],
        [4, 5, 6],
        [7, 8, 9]
    ]

    func cell(row: Int, col: Int) -> Int {
        return data[row][col]
    }
}

func grid() {
    let mg = MatrixGrid()
    print("Cell (1, 2):", mg.cell(row: 1, col: 2))
}

grid()
