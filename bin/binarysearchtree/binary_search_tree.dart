import 'dart:collection';

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

  bool contains(int value) {
    //CASE - II VALUE EXIST
    BinarySearchTreeNode? temp = _root;
    while (temp != null) {
      // CASE - I || EXIST IN THE LEFT NODE?
      if (value < temp.value) {
        temp = temp.left;
      }
      // CASE - II || VALUE EXIST IN THE RIGHT NODE?
      else if (value > temp.value) {
        temp = temp.right;
      }
      // CASE - III || NEITHER IN LEFT NOR IN RIGHT
      else {
        return true;
      }
    }
    // CASE - IV || VALUE DOESN'T EXIST
    return false;
  }

  // Breath First Search
  List<int> BFS() {
    BinarySearchTreeNode? currentNode = _root;
    Queue<BinarySearchTreeNode> queue = Queue<BinarySearchTreeNode>();
    List<int> result = [];
    queue.add(currentNode as BinarySearchTreeNode);
    while (queue.isNotEmpty) {
      currentNode = queue.removeFirst();
      result.add(currentNode.value);
      if (currentNode.left != null) {
        queue.add(currentNode.left!);
      }
      if (currentNode.right != null) {
        queue.add(currentNode.right!);
      }
    }
    return result;
  }
}
