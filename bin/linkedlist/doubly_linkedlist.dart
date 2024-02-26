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

  void prepend(int value) {
    Node newNode = Node(value);
    if (_length == 0) {
      _head = newNode;
      _tail = newNode;
    } else {
      newNode.next = _head;
      _head?.prev = newNode;
      _head = newNode;
    }
    _length++;
  }

  Node? removeFirst() {
    Node? temp = _head;
    if (_length == 0) return null;
    if (_length == 1) {
      _head = null;
      _tail = null;
    } else {
      _head = _head?.next;
      _head?.prev = null;
      temp?.next = null;
    }
    _length--;
    return temp;
  }

  Node? get(int index) {
    Node? temp = _head;
    if (_length < 0 || index >= _length) return null;
    if (index < _length / 2) {
      for (int i = 0; i < index; i++) {
        temp = temp?.next;
      }
    } else {
      temp = _tail;
      for (int i = _length - 1; i > index; i--) {
        temp = temp?.prev;
      }
    }
    return temp;
  }
}
