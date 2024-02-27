import 'queue_node.dart';

class Queue {
  QueueNode? _first;
  QueueNode? _last;
  late int _length;

  Queue(int value) {
    QueueNode newNode = QueueNode(value);
    _first = newNode;
    _last = newNode;
    _length = 1;
  }

  void printList() {
    QueueNode? temp = _first;
    while (temp != null) {
      print(temp.value);
      temp = temp.next;
    }
  }

  void enqueue(int value) {
    QueueNode newNode = QueueNode(value);
    if (_length == 0) {
      _first = newNode;
      _last = newNode;
    } else {
      _last?.next = newNode;
      _last = newNode;
    }
    _length++;
  }

  QueueNode? dequeue() {
    if (_length == 0) return null;
    QueueNode? temp = _first;
    if (_length == 1) {
      _first = null;
      _last = null;
    } else {
      _first = _first?.next;
      temp?.next = null;
    }
    _length--;
    return temp;
  }

  void getFirst() => print('First: ${_first?.value}');
  void getLast() => print('Last: ${_last?.value}');
  void getHeight() => print('Length: $_length');
}
