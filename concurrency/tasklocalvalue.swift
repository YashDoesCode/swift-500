enum RequestContext {
    @TaskLocal static var traceID: String?
}

func logWithTrace() {
    print("Trace ID:", RequestContext.traceID ?? "none")
}

func trace() async {
    RequestContext.$traceID.withValue("req-12345") {
        logWithTrace()
    }
}

await trace()
