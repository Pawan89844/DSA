import 'package:dsa/dsa.dart' as dsa;

import 'linkedlist/linkedlist.dart';

void main(List<String> arguments) {
  LinkedList myLinkedList = LinkedList(1);

  myLinkedList.append(2);
  myLinkedList.append(3);
  myLinkedList.append(4);
  myLinkedList.append(5);
  myLinkedList.append(6);
  myLinkedList.append(7);
  myLinkedList.append(8);
  myLinkedList.append(9);
  print('Value: ${myLinkedList.findMiddleNode()?.value}');
  myLinkedList.printList();
}
