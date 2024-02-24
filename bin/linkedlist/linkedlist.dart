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

  Node? removeLast() {
    Node? temp = _head;
    Node? pre = _tail;
    if (_length == 0) return null;
    while (temp?.next != null) {
      pre = temp;
      temp = temp?.next;
    }
    _tail = pre;
    _tail?.next = null;
    _length--;
    if (_length == 0) {
      _head = null;
      _tail = null;
    }
    return temp;
  }

  void prepand(int value) {
    Node newNode = Node(value);
    if (_length == 0) {
      _head = newNode;
      _tail = newNode;
    } else {
      newNode.next = _head;
      _head = newNode;
    }
    _length++;
  }

  Node? removeFirst() {
    if (_length == 0) return null;
    Node? temp = _head;
    _head = _head?.next;
    temp?.next = null;
    _length--;
    if (_length == 0) {
      _tail = null;
    }
    return temp;
  }

  Node? get(int index) {
    if (index < 0 || index > _length) return null;
    Node? temp = _head;
    for (int i = 0; i < index; i++) {
      temp = temp?.next;
    }
    return temp;
  }

  bool set(int index, int value) {
    Node? temp = get(index);
    if (temp != null) {
      temp.value = value;
      return true;
    }
    return false;
  }

  bool insert(int index, int value) {
    if (index < 0 || index > _length) return false;
    if (index == 0) {
      prepand(value);
      return true;
    }
    if (index == _length) {
      append(value);
      return true;
    }
    Node? newNode = Node(value);
    Node? temp = get(index - 1);
    newNode.next = temp?.next;
    temp?.next = newNode;
    _length++;
    return true;
  }

  Node? remove(int index) {
    if (index < 0 || index >= _length) return null;
    if (index == 0) {
      return removeFirst();
    }
    if (index == _length - 1) {
      return removeLast();
    }
    Node? prev = get(index - 1);
    Node? temp = prev?.next;
    prev?.next = temp?.next;
    temp?.next = null;
    _length--;
    return temp;
  }
}
