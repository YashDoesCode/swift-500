struct HuffmanNode {
    let char: Character?
    let frequency: Int
}

func encode() {
    let nodes = [
        HuffmanNode(char: "a", frequency: 5),
        HuffmanNode(char: "b", frequency: 9),
        HuffmanNode(char: "c", frequency: 12)
    ]
    let totalFreq = nodes.reduce(0) { $0 + $1.frequency }
    print("Total Huffman frequency:", totalFreq)
}

encode()
