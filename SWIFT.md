# Swift Reference & Architecture Guide

A practical overview of the Swift programming language, its core design philosophy, type system, memory model, and runtime characteristics.

---

## 1. What is Swift?

Swift is a modern, high-performance, general-purpose compiled programming language developed by Apple. It combines type safety, expressive syntax, fast native execution, and modern memory management through Automatic Reference Counting (ARC).

Key attributes:
- **Type-Safe & Type-Inferred**: Compile-time type checking prevents subtle type errors while clean inference minimizes verbosity.
- **Memory-Safe**: Uninitialized variables cannot be used; array bounds are checked at runtime; pointer arithmetic is restricted to explicit `Unsafe` APIs.
- **Multi-Paradigm**: First-class support for protocol-oriented programming, object-oriented programming with inheritance, functional transformations, and structured concurrency.

---

## 2. Execution Environments

Swift runs natively across multiple platforms:
- **Apple Platforms**: iOS, iPadOS, macOS, watchOS, tvOS, visionOS.
- **Server & Systems**: Linux (Ubuntu, Amazon Linux, CentOS), Windows, Docker containers.
- **Embedded & Web**: Embedded Swift for microcontrollers, WebAssembly via SwiftWasm.

---

## 3. Value Types vs Reference Types

Swift emphasizes value semantics while retaining powerful reference types when identity and state sharing are required.

### Value Types (`struct`, `enum`, `tuple`)
- Copied on assignment or parameter passing (optimized via Copy-on-Write for standard collections).
- Each instance maintains independent state, preventing unintended side effects across concurrent threads or separate code units.
- Stored directly on the stack or inline within enclosing structures.

### Reference Types (`class`, `actor`)
- Multiple variables can reference the same shared instance in heap memory.
- Support single inheritance, polymorphism, runtime type casting (`is`, `as?`, `as!`), and custom deinitializers (`deinit`).
- Memory lifecycle is governed automatically by Automatic Reference Counting (ARC).

---

## 4. Optionals & Safe Unwrapping

Optionals express the potential absence of a value using `Wrapped?` (or `Optional<Wrapped>`). Swift requires explicit unwrapping to access underlying values:

- **Optional Binding**: `if let value = optionalValue { ... }`
- **Early Exit**: `guard let value = optionalValue else { return }`
- **Nil-Coalescing Operator**: `let unwrapped = optionalValue ?? fallback`
- **Optional Chaining**: `optionalObject?.property?.method()`
- **Unconditional Unwrapping**: `optionalValue!` (used only when non-nil state is guaranteed by invariant)

---

## 5. Protocol-Oriented Programming

Protocols define interfaces and contracts that structs, enums, and classes can adopt:
- **Protocol Requirements**: Methods, initializers, mutating methods, get/set properties.
- **Protocol Extensions**: Provide default implementations and add capabilities across any conforming type without class hierarchies.
- **Composition**: Combine multiple focused protocols (`Codable`, `Identifiable & Hashable`) rather than deep monolithic inheritance trees.

---

## 6. Closures & Higher-Order Functions

Closures are self-contained blocks of functionality that can be passed around and executed:
- **Trailing Closure Syntax**: When a closure is the last argument to a function, it can be written outside the parentheses.
- **Shorthand Arguments**: `$0`, `$1`, etc. provide lightweight syntax for transformations.
- **Capture Semantics**: Closures capture surrounding constants and variables; `[weak self]` or `[unowned self]` capture lists break reference cycles in class instances.

---

## 7. Error Handling

Swift provides structured error propagation using the `Error` protocol:
- **Throwing Functions**: Marked with `throws` in the signature.
- **Propagation**: Calls require `try`, `try?` (converts error to `nil`), or `try!` (fails at runtime on error).
- **Handling**: `do { try expression } catch { ... }` blocks capture and process thrown errors.
- **Typed Errors & Result**: `Result<Success, Failure>` represents explicit outcomes as an enum for asynchronous or deferred workflows.

---

## 8. Modern Concurrency Overview

Swift includes structured concurrency built directly into the language:
- `async`/`await` for asynchronous suspension points without callback hell.
- `Task` and `TaskGroup` for structured hierarchical concurrency.
- `actor` types protect mutable state from data races through actor isolation.

---

## 9. How to Run Swift Programs

Execute any standalone `.swift` file using the Swift interpreter/JIT runner:

```bash
swift path/to/program.swift
```

To compile directly to a native binary:

```bash
swiftc path/to/program.swift -o program
./program
```

---

Written while learning Swift.
