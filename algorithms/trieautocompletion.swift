class TrieNode {
    var children: [Character: TrieNode] = [:]
    var isEndOfWord: Bool = false
}

class Trie {
    let root = TrieNode()

    func insert(word: String) {
        var current = root
        for char in word {
            if current.children[char] == nil {
                current.children[char] = TrieNode()
            }
            current = current.children[char]!
        }
        current.isEndOfWord = true
    }

    func search(word: String) -> Bool {
        var current = root
        for char in word {
            guard let next = current.children[char] else { return false }
            current = next
        }
        return current.isEndOfWord
    }
}

func query() {
    let trie = Trie()
    trie.insert(word: "swift")
    print("Contains 'swift':", trie.search(word: "swift"))
    print("Contains 'sw':", trie.search(word: "sw"))
}

query()
