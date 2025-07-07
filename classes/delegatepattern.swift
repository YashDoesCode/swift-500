protocol DownloaderDelegate: AnyObject {
    func didFinish(content: String)
}

class Downloader {
    weak var delegate: DownloaderDelegate?

    func start() {
        print("Downloading...")
        delegate?.didFinish(content: "Downloaded Content")
    }
}

class Client: DownloaderDelegate {
    func didFinish(content: String) {
        print("Client processed:", content)
    }
}

func delegate() {
    let d = Downloader()
    let c = Client()
    d.delegate = c
    d.start()
}

delegate()
