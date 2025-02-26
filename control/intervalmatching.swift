struct GradeScale {
    func grade(mark: Int) -> String {
        switch mark {
        case 0..<50:
            return "Fail"
        case 50..<70:
            return "Average"
        case 70..<90:
            return "Great"
        case 90...100:
            return "Outstanding"
        default:
            return "Invalid"
        }
    }
}

func grade() {
    let scale = GradeScale()
    print(scale.grade(mark: 95))
    print(scale.grade(mark: 62))
}

grade()
