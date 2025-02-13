func shadow() {
    let count = 10
    print("Outer count:", count)
    do {
        let count = 20
        print("Inner count:", count)
    }
    let optionalValue: Int? = 30
    if let optionalValue = optionalValue {
        print("Shadowed unwrap:", optionalValue)
    }
}

shadow()
