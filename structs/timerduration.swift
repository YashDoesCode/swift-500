struct Duration {
    let seconds: Double

    var inMilliseconds: Double {
        return seconds * 1000.0
    }

    var inMinutes: Double {
        return seconds / 60.0
    }
}

func time() {
    let d = Duration(seconds: 120.0)
    print("MS:", d.inMilliseconds)
    print("Minutes:", d.inMinutes)
}

time()
