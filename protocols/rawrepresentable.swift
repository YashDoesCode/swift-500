struct StatusCode: RawRepresentable {
    let rawValue: Int

    init?(rawValue: Int) {
        guard rawValue >= 100 && rawValue <= 599 else { return nil }
        self.rawValue = rawValue
    }
}

func represent() {
    let code = StatusCode(rawValue: 200)
    print("Status code:", code?.rawValue ?? 0)
}

represent()
