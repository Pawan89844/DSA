import 'package:dsa/dsa.dart' as dsa;

import 'linkedlist/linkedlist.dart';

void main(List<String> arguments) {
  LinkedList myLinkedList = LinkedList(1);

  myLinkedList.append(2);
  print(myLinkedList.removeLast()?.value);
  print(myLinkedList.removeLast()?.value);
  print(myLinkedList.removeLast());
  // myLinkedList.printList();
}
