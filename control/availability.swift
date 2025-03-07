struct VersionCheck {
    func check() {
        if #available(macOS 10.15, iOS 13.0, *) {
            print("Modern platform features available")
        } else {
            print("Legacy platform fallback")
        }
    }
}

func check() {
    let vc = VersionCheck()
    vc.check()
}

check()
