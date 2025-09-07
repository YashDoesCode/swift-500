struct Filter {
    func filter<T>(items: [T], isIncluded: (T) -> Bool) -> [T] {
        return items.filter(isIncluded)
    }
}

func filter() {
    let f = Filter()
    print("Filtered:", f.filter(items: [1, 2, 3, 4, 5]) { $0 % 2 == 1 })
}

filter()
