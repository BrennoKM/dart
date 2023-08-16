class HuffmanNode {
  final String character;
  final int frequency;
  HuffmanNode? left;
  HuffmanNode? right;

  HuffmanNode(this.character, this.frequency);
}

HuffmanNode buildHuffmanTree(List<HuffmanNode> nodes) {
  while (nodes.length > 1) {
    nodes.sort((a, b) => a.frequency.compareTo(b.frequency));
    HuffmanNode left = nodes.removeAt(0);
    HuffmanNode right = nodes.removeAt(0);
    HuffmanNode combinedNode = HuffmanNode('', left.frequency + right.frequency);
    combinedNode.left = left;
    combinedNode.right = right;
    nodes.add(combinedNode);
  }
  return nodes[0];
}

Map<String, String> buildHuffmanCodes(HuffmanNode node, String currentCode) {
  if (node.character.isNotEmpty) {
    return {node.character: currentCode};
  }
  Map<String, String> codes = {};
  if (node.left != null) {
    codes.addAll(buildHuffmanCodes(node.left!, currentCode + '0'));
  }
  if (node.right != null) {
    codes.addAll(buildHuffmanCodes(node.right!, currentCode + '1'));
  }
  return codes;
}

String encodeUsingHuffman(String input, Map<String, String> huffmanCodes) {
  StringBuffer encoded = StringBuffer();
  for (int i = 0; i < input.length; i++) {
    String char = input[i];
    encoded.write(huffmanCodes[char]);
    if (i < input.length - 1) {
      encoded.write(' ');
    }
  }
  return encoded.toString();
}

void main() {
  String input = "ABRACADABRA";
  Map<String, int> frequencies = {};

  for (int i = 0; i < input.length; i++) {
    String char = input[i];
    frequencies[char] = frequencies.containsKey(char) ? frequencies[char]! + 1 : 1;
  }

  List<HuffmanNode> nodes = [];
  frequencies.forEach((char, freq) {
    nodes.add(HuffmanNode(char, freq));
  });

  HuffmanNode huffmanTree = buildHuffmanTree(List.from(nodes));
  Map<String, String> huffmanCodes = buildHuffmanCodes(huffmanTree, '');

  String encoded = encodeUsingHuffman(input, huffmanCodes);
  print("Entrada: $input");
  print("Saída: $encoded");
}
