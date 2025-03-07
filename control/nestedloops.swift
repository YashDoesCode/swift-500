struct Table {
    func printTable(size: Int) {
        for row in 1...size {
            for col in 1...size {
                print("\(row * col)", terminator: " ")
            }
            print("")
        }
    }
}

func display() {
    let table = Table()
    table.printTable(size: 3)
}

display()
