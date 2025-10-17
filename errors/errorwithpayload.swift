struct ErrorContext {
    let line: Int
    let column: Int
}

enum ScriptError: Error {
    case syntax(ErrorContext)
}

func runScript() throws {
    throw ScriptError.syntax(ErrorContext(line: 42, column: 10))
}

func execute() {
    do {
        try runScript()
    } catch ScriptError.syntax(let ctx) {
        print("Syntax error at line", ctx.line, "col", ctx.column)
    } catch {
        print("Script error")
    }
}

execute()
