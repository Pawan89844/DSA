import 'stack_node.dart';

class Stack {
  StackNode? _top;
  late int _height;

  Stack(int value) {
    StackNode newNode = StackNode(value);
    _top = newNode;
    _height = 1;
  }

  void printList() {
    StackNode? temp = _top;
    while (temp != null) {
      print(_top?.value);
      temp = _top?.next;
    }
  }

  void getTop() => print('Top: ${_top?.value}');
  void getHeight() => print('Height: $_height');
}
