enum PipelineError: Error { case invalidStep }

func stepA(input: Int) throws -> Int {
    guard input > 0 else { throw PipelineError.invalidStep }
    return input + 10
}

func stepB(input: Int) throws -> Int {
    return input * 2
}

func pipe() {
    do {
        let val = try stepB(input: try stepA(input: 5))
        print("Pipelined result:", val)
    } catch {
        print("Pipeline caught error:", error)
    }
}

pipe()
