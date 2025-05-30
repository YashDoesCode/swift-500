struct City: Hashable {
    let name: String
    let zipCode: String
}

func index() {
    var population: [City: Int] = [:]
    let sf = City(name: "San Francisco", zipCode: "94101")
    population[sf] = 873965
    print("SF population:", population[sf] ?? 0)
}

index()
