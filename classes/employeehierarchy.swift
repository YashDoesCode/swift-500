class Employee {
    let name: String
    let baseSalary: Double

    init(name: String, baseSalary: Double) {
        self.name = name
        self.baseSalary = baseSalary
    }

    func salary() -> Double { return baseSalary }
}

class Manager: Employee {
    let bonus: Double
    init(name: String, baseSalary: Double, bonus: Double) {
        self.bonus = bonus
        super.init(name: name, baseSalary: baseSalary)
    }
    override func salary() -> Double { return baseSalary + bonus }
}

func calculate() {
    let m = Manager(name: "Sarah", baseSalary: 80000, bonus: 15000)
    print("Manager salary:", m.salary())
}

calculate()
