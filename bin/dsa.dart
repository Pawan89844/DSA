import 'dart:collection';

import 'package:dsa/dsa.dart' as dsa;
import 'algorithms/questions.dart';
import 'binarysearchtree/binary_search_tree.dart';
// import 'queue/queue.dart';
import 'stack/stack.dart';
import 'strings/my_strings.dart';

void main(List<String> arguments) {
  List<int> nums = [3];
  int val = 3;
  Questions q = Questions();
  q.removeElement(nums, val);

  // DoubleLinkedQueue queue = DoubleLinkedQueue();
  // queue.add(25);
  // queue.add(31);
  // queue.add(32);
  // queue.add(12);
  // print('Queue: $queue');
  // Questions q = Questions();
  // List<int> nums = [1, 1, 1, 3, 3, 4, 3, 2, 4, 2];
  // q.containsDuplicate(nums);
  // Stack myStack = Stack();
  // myStack.push(25);
  // myStack.push(36);
  // myStack.push(57);
  // myStack.push(92);
  // myStack.printList();
  // print(myStack.isNotEmpty);
  // BinarySearchTree myBST = BinarySearchTree();
  // myBST.insert(47);
  // myBST.insert(21);
  // myBST.insert(76);
  // myBST.insert(18);
  // myBST.insert(27);
  // myBST.insert(52);
  // myBST.insert(82);

  // print(myBST.BFS());
  // print(myBST.contains(8));
}
