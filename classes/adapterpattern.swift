class LegacyPrinter {
    func printOld(text: String) {
        print("LEGACY: \(text)")
    }
}

class ModernPrinter {
    func printDocument(text: String) {}
}

class PrinterAdapter: ModernPrinter {
    let legacy: LegacyPrinter
    init(legacy: LegacyPrinter) { self.legacy = legacy }
    override func printDocument(text: String) {
        legacy.printOld(text: text)
    }
}

func adapt() {
    let old = LegacyPrinter()
    let adapter: ModernPrinter = PrinterAdapter(legacy: old)
    adapter.printDocument(text: "Invoice")
}

adapt()
