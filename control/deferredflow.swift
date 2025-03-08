struct Resource {
    func execute() {
        print("Resource acquired")
        defer {
            print("Resource released")
        }
        print("Executing work inside block")
    }
}

func execute() {
    let res = Resource()
    res.execute()
}

execute()
