func detach() async {
    let t = Task.detached {
        return "Detached work"
    }
    print(await t.value)
}

await detach()
