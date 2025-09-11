struct Matrix<T> {
    let rows: Int
    let cols: Int
    private var grid: [T]

    init(rows: Int, cols: Int, initialValue: T) {
        self.rows = rows
        self.cols = cols
        self.grid = Array(repeating: initialValue, count: rows * cols)
    }

    subscript(row: Int, col: Int) -> T {
        get { return grid[row * cols + col] }
        set { grid[row * cols + col] = newValue }
    }
}

func matrix() {
    var m = Matrix<String>(rows: 2, cols: 2, initialValue: ".")
    m[0, 1] = "X"
    print("Matrix (0, 1):", m[0, 1])
}

matrix()
