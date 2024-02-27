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

  void getFirst() => print('First: ${_first?.value}');
  void getLast() => print('Last: ${_last?.value}');
  void getHeight() => print('Length: $_length');
}
