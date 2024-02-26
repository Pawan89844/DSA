import 'node.dart';

class DoublyLinkedList {
  Node? _head;
  Node? _tail;
  late int _length;

  DoublyLinkedList(int value) {
    Node newNode = Node(value);
    _head = newNode;
    _tail = newNode;
    _length = 1;
  }

  void printList() {
    Node? temp = _head;
    while (temp != null) {
      print(temp.value);
      temp = temp.next;
    }
  }

  void getHead() => print('Head : ${_head?.value}');
  void getTail() => print('Tail : ${_tail?.value}');
  void getLength() => print('Length : $_length');

  void append(int value) {
    Node newNode = Node(value);
    if (_length == 0) {
      _head = newNode;
      _tail = newNode;
    } else {
      _tail?.next = newNode;
      newNode.prev = _tail;
      _tail = newNode;
    }
    _length++;
  }

  Node? removeLast() {
    Node? temp = _tail;
    if (_length == 0) return null;
    if (_length == 1) {
      _head = null;
      _tail = null;
    } else {
      _tail = _tail?.prev;
      _tail?.next = null;
      temp?.prev = null;
    }
    _length--;
    return temp;
  }
}
