struct ResponsePayload<Data: Codable>: Codable {
    let status: Int
    let payload: Data
}

func parse() {
    let resp = ResponsePayload(status: 200, payload: "Success")
    print("Status:", resp.status, "Payload:", resp.payload)
}

parse()
