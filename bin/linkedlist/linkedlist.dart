import 'node.dart';

class LinkedList {
  Node? _head;
  Node? _tail;
  late int _length;

  LinkedList(int value) {
    Node newNode = Node(value);
    _head = newNode;
    _tail = newNode;
    _length = 1;
  }

  void printList() {
    Node? temp = _head;
    while (temp != null) {
      print(temp.value);
      temp = temp.next as Node?;
    }
  }

  void getHead() => print('Head: ${_head?.value}');

  void getTail() => print('Tail: ${_tail?.value}');

  void getLength() => print('Length: $_length');

  void append(int value) {
    Node newNode = Node(value);
    if (_length == 0) {
      _head = newNode;
      _tail = newNode;
    } else {
      _tail?.next = newNode;
      _tail = newNode;
    }
    _length++;
  }
}
