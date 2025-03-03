struct MatrixScanner {
    func scan() {
        outerLoop: for i in 1...3 {
            for j in 1...3 {
                if i * j == 4 {
                    print("Found match at", i, j)
                    break outerLoop
                }
            }
        }
    }
}

func scan() {
    let scanner = MatrixScanner()
    scanner.scan()
}

scan()
