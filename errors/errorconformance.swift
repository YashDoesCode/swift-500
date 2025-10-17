struct ApiError: Error, Equatable {
    let code: Int
    let message: String
}

func compare() {
    let e1 = ApiError(code: 400, message: "Bad Request")
    let e2 = ApiError(code: 400, message: "Bad Request")
    print("Errors equal:", e1 == e2)
}

compare()
