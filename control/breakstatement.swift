struct Searcher {
    func search(target: Int, in list: [Int]) {
        for item in list {
            if item == target {
                print("Found target:", item)
                break
            }
        }
    }
}

func search() {
    let searcher = Searcher()
    searcher.search(target: 3, in: [1, 2, 3, 4, 5])
}

search()
