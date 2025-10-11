enum JSONError: Error {
    case unexpectedToken(Character, Int)
}

func parseChar(c: Character, pos: Int) throws {
    if c == "#" { throw JSONError.unexpectedToken(c, pos) }
}

func parse() {
    do {
        try parseChar(c: "#", pos: 12)
    } catch JSONError.unexpectedToken(let char, let pos) {
        print("Unexpected token \(char) at pos \(pos)")
    } catch {
        print("Parse error")
    }
}

parse()
