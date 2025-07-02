class ResourceHandle {
    let id: Int
    init(id: Int) {
        self.id = id
        print("Resource \(id) allocated")
    }
    deinit {
        print("Resource \(id) deallocated")
    }
}

func manage() {
    do {
        let handle = ResourceHandle(id: 42)
        print("Using handle \(handle.id)")
    }
    print("Scope exited")
}

manage()
