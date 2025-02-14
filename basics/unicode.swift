struct UnicodeInspector {
    let emoji: String = "🚀✨Swift"

    func inspect() {
        print("Character count:", emoji.count)
        print("UTF8 count:", emoji.utf8.count)
        print("UTF16 count:", emoji.utf16.count)
        for scalar in emoji.unicodeScalars {
            print("Scalar:", scalar, "Value:", scalar.value)
        }
    }
}

func inspect() {
    let inspector = UnicodeInspector()
    inspector.inspect()
}

inspect()
