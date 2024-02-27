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
      print(temp.value);
      temp = temp.next;
    }
  }

  void push(int value) {
    StackNode newNode = StackNode(value);
    if (_height == 0) {
      _top = newNode;
    } else {
      newNode.next = _top;
      _top = newNode;
    }
    _height++;
  }

  StackNode? pop() {
    StackNode? temp = _top;
    if (_height == 0) return null;
    _top = temp?.next;
    temp?.next = null;
    _height--;
    return temp;
  }

  void getTop() => print('Top: ${_top?.value}');
  void getHeight() => print('Height: $_height');
}
