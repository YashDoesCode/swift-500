struct Banner {
    func display(message: String, prefix: String = "INFO:") {
        print(prefix, message)
    }
}

func display() {
    let b = Banner()
    b.display(message: "System running")
    b.display(message: "Disk low", prefix: "WARN:")
}

display()
