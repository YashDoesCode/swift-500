class Media {
    let title: String
    init(title: String) { self.title = title }
}

class Video: Media {
    let durationSeconds: Int
    init(title: String, durationSeconds: Int) {
        self.durationSeconds = durationSeconds
        super.init(title: title)
    }
}

func stream() {
    let items: [Media] = [Video(title: "Swift Tutorial", durationSeconds: 600), Media(title: "Audio Guide")]
    for item in items {
        if let video = item as? Video {
            print("Video: \(video.title) (\(video.durationSeconds)s)")
        } else {
            print("General Media: \(item.title)")
        }
    }
}

stream()
