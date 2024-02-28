import 'binary_search_tree_node.dart';

class BinarySearchTree {
  BinarySearchTreeNode? _root;
  BinarySearchTreeNode? get root => _root;

  void printList() {
    BinarySearchTreeNode? temp = _root;
    while (temp != null) {
      print(temp.value);
      temp = temp.left;
      temp = temp?.right;
    }
  }

  bool insert(int value) {
    BinarySearchTreeNode? newNode = BinarySearchTreeNode(value);
    if (_root == null) {
      _root = newNode;
      return true;
    }
    BinarySearchTreeNode? temp = _root;
    while (true) {
      if (newNode.value == temp?.value) return false;
      int val = temp?.value as int;
      if (newNode.value < val) {
        if (temp?.left == null) {
          temp?.left = newNode;
          return true;
        }
        temp = temp?.left;
      } else {
        if (temp?.right == null) {
          temp?.right = newNode;
          return true;
        }
        temp = temp?.right;
      }
    }
  }
}
