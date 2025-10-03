import Foundation

enum NetworkIssue: LocalizedError {
    case serverUnreachable

    var errorDescription: String? {
        switch self {
        case .serverUnreachable: return "The remote server could not be reached."
        }
    }
}

func diagnose() {
    let err = NetworkIssue.serverUnreachable
    print("Localized Description:", err.localizedDescription)
}

diagnose()
