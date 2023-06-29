// https://www.hackerearth.com/practice/data-structures/trees/binary-and-nary-trees/practice-problems/algorithm/magical-tree-1-e7f8cabd/
// easy

class Node {
    var value: String;
    var children: [Node] = [Node]();

    init(value: String){
        self.value = value;
        self.children = [];
    }
}

var FIRSTLINE = readLine()!.split(separator: " ").map { Int($0)! }
var N = FIRSTLINE[0]
var Q = FIRSTLINE[1]
var string = readLine()!;
var treeDictionary : [Int : Node] = [Int:Node]()

for i in 0..<string.count {
    let value = string[string.index(string.startIndex, offsetBy: i)]
    var tempNode : Node = Node(value: String(value) );
    treeDictionary[i] = tempNode;
}

for i in 0..<N-1 {
    var QUERY = readLine()!.split(separator: " ").map { Int($0)! };
    var u = QUERY[1] <  QUERY[0] : QUERY[1] : QUERY[0];
    var v = QUERY[1] >  QUERY[0] : QUERY[1] : QUERY[0];
    treeDictionary[u-1]!.children.append(treeDictionary[v-1]!);
}

func characterCounter(node :Node?, character : String) -> Int {
    var count = 0;
    if let node {
        if node.value == character {
            count += 1;
        }
        for child in node.children {
            let childrenCounter = characterCounter(node: child, character: character);
            count = count + childrenCounter
        }
        return count;
    }else {
        return 0;
    }
}
for i in 0..<Q{
    var QUERIES = readLine()!.split(separator: " ");
    var u = Int(QUERIES[0])!;
    var v = QUERIES[1];
    var current  = treeDictionary[u-1]!;
    var count = characterCounter(node:current,character: String(v))
    print(count)
}


