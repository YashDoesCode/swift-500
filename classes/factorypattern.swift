class Notification {
    func send() {}
}

class PushNotification: Notification {
    override func send() {
        print("Delivered push notification")
    }
}

class SMSNotification: Notification {
    override func send() {
        print("Delivered SMS text")
    }
}

class NotificationFactory {
    static func make(type: String) -> Notification {
        if type == "push" {
            return PushNotification()
        }
        return SMSNotification()
    }
}

func notify() {
    let n = NotificationFactory.make(type: "push")
    n.send()
}

notify()
