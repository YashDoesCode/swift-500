enum Maybe<Wrapped> {
    case some(Wrapped)
    case none

    func unwrap(or fallback: Wrapped) -> Wrapped {
        switch self {
        case .some(let val): return val
        case .none: return fallback
        }
    }
}

func maybe() {
    let m: Maybe<String> = .some("Found")
    print("Unwrapped:", m.unwrap(or: "Default"))
}

maybe()
