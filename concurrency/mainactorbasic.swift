@MainActor
class ViewModel {
    var title: String = "Dashboard"

    func update(newTitle: String) {
        title = newTitle
    }
}

func run() async {
    await MainActor.run {
        let vm = ViewModel()
        vm.update(newTitle: "Overview")
        print("Title on MainActor:", vm.title)
    }
}

await run()
