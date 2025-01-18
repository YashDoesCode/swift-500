# swift-500

A curated collection of 500 independent, self-contained Swift programs exploring modern Swift syntax, concepts, paradigms, and design patterns.

## Repository Structure

Programs are organized across chapter directories:

- `basics/` — Values, types, optionals, string operations, interpolation
- `control/` — Loops, switch statements, guard clauses, pattern matching, ranges
- `functions/` — Parameters, default arguments, variadics, closures, higher-order functions
- `collections/` — Arrays, sets, dictionaries, map, filter, reduce, lazy sequences
- `structs/` — Value types, mutating methods, computed properties, property observers
- `classes/` — Reference types, inheritance, method overriding, polymorphism, initializers
- `protocols/` — Protocol-oriented design, protocol extensions, default implementations
- `generics/` — Generic functions, generic types, associated types, type constraints
- `errors/` — Throwing functions, do-catch handling, custom errors, Result type
- `algorithms/` — Sorting, searching, recursion, dynamic programming, classic algorithms

## Rules & Philosophy

- **Self-Contained**: Every `.swift` file is a standalone executable program with no external dependencies.
- **Runnable**: Every program executes directly with `swift <file>.swift` and prints deterministic, illustrative output.
- **Clean & Idiomatic**: No comments in code; clear expressive names carry the logic. Function names are single-word verbs or nouns.
- **Modern Paradigms**: Balanced mix of value semantics (structs, enums), reference semantics (classes with inheritance and polymorphism), protocols, and functional patterns.

## Running a Program

Make sure the Swift toolchain is installed (`swift --version`).

To execute any file:

```bash
swift basics/greeting.swift
```

For language reference and architecture notes, see [SWIFT.md](SWIFT.md).
