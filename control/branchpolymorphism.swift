class FilterBase {
    func allows(number: Int) -> Bool {
        return true
    }
}

class EvenFilter: FilterBase {
    override func allows(number: Int) -> Bool {
        return number % 2 == 0
    }
}

class PositiveFilter: FilterBase {
    override func allows(number: Int) -> Bool {
        return number > 0
    }
}

func filter() {
    let filters: [FilterBase] = [EvenFilter(), PositiveFilter()]
    let testVal = 4
    for f in filters {
        print("Allows \(testVal):", f.allows(number: testVal))
    }
}

filter()
