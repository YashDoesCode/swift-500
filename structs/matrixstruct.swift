struct Grid2D {
    let rows: Int
    let cols: Int
    var grid: [Int]

    init(rows: Int, cols: Int) {
        self.rows = rows
        self.cols = cols
        self.grid = Array(repeating: 0, count: rows * cols)
    }

    subscript(row: Int, col: Int) -> Int {
        get { return grid[row * cols + col] }
        set { grid[row * cols + col] = newValue }
    }
}

func matrix() {
    var g = Grid2D(rows: 2, cols: 2)
    g[0, 1] = 42
    print("Value at (0, 1):", g[0, 1])
}

matrix()
