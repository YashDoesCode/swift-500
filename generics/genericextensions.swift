struct StackType<T> {
    var items: [T] = []
}

extension StackType {
    var topItem: T? {
        return items.last
    }
}

func extend() {
    var st = StackType<Int>()
    st.items.append(100)
    print("Top item:", st.topItem ?? -1)
}

extend()
