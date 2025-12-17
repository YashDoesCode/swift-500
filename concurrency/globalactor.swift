@globalActor
actor AppActor {
    static let shared = AppActor()
}

@AppActor
func updateUI() {
    print("Executing on global AppActor")
}

func execute() async {
    await updateUI()
}

await execute()
