struct Adapter<Source, Target> {
    let convert: (Source) -> Target

    func adapt(_ source: Source) -> Target {
        return convert(source)
    }
}

func adapt() {
    let intToString = Adapter<Int, String> { "Value: \($0)" }
    print(intToString.adapt(42))
}

adapt()
