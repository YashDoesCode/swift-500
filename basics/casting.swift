class Media {
    let title: String
    init(title: String) {
        self.title = title
    }
}

class Song: Media {
    let artist: String
    init(title: String, artist: String) {
        self.artist = artist
        super.init(title: title)
    }
}

class Movie: Media {
    let director: String
    init(title: String, director: String) {
        self.director = director
        super.init(title: title)
    }
}

func classify(item: Media) {
    if let song = item as? Song {
        print("Song:", song.title, "by", song.artist)
    } else if let movie = item as? Movie {
        print("Movie:", movie.title, "directed by", movie.director)
    } else {
        print("Media:", item.title)
    }
}

func categorize() {
    let items: [Media] = [
        Song(title: "Subdivisions", artist: "Rush"),
        Movie(title: "Tron", director: "Steven Lisberger")
    ]
    for item in items {
        classify(item: item)
    }
}

categorize()
