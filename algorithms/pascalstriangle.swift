struct PascalsTriangle {
    func generate(rows: Int) -> [[Int]] {
        var triangle: [[Int]] = []
        for i in 0..<rows {
            var row = Array(repeating: 1, count: i + 1)
            if i > 1 {
                for j in 1..<i {
                    row[j] = triangle[i - 1][j - 1] + triangle[i - 1][j]
                }
            }
            triangle.append(row)
        }
        return triangle
    }
}

func generate() {
    let pt = PascalsTriangle()
    print("Pascal 4 rows:", pt.generate(rows: 4))
}

generate()
