import Foundation

struct Formatter {
    func display(value: Double) {
        let rounded = String(format: "%.2f", value)
        print("Raw:", value)
        print("Formatted:", rounded)
    }
}

func format() {
    let formatter = Formatter()
    formatter.display(value: 3.1415926535)
}

format()
