import 'package:dsa/dsa.dart' as dsa;
import 'stack/stack.dart';

void main(List<String> arguments) {
  Stack myStack = Stack(3);
  myStack.push(2);
  myStack.push(1);
  print('Remove: ${myStack.pop()?.value}');
  print('Remove: ${myStack.pop()?.value}');
  print('Remove: ${myStack.pop()?.value}');
  print('Remove: ${myStack.pop()?.value}');
  myStack.printList();
  myStack.getHeight();
  myStack.getTop();
}
