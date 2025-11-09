struct MatrixMultiplier {
    func multiply(a: [[Int]], b: [[Int]]) -> [[Int]] {
        let rowsA = a.count
        let colsA = a[0].count
        let colsB = b[0].count
        var result = Array(repeating: Array(repeating: 0, count: colsB), count: rowsA)
        for i in 0..<rowsA {
            for j in 0..<colsB {
                for k in 0..<colsA {
                    result[i][j] += a[i][k] * b[k][j]
                }
            }
        }
        return result
    }
}

func multiply() {
    let mm = MatrixMultiplier()
    let a = [[1, 2], [3, 4]]
    let b = [[2, 0], [1, 2]]
    print("Matrix product:", mm.multiply(a: a, b: b))
}

multiply()
