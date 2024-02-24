import 'package:dsa/dsa.dart' as dsa;

import 'linkedlist/linkedlist.dart';

void main(List<String> arguments) {
  LinkedList myLinkedList = LinkedList(4);

  myLinkedList.printList();
  myLinkedList.getHead();
  myLinkedList.getTail();
  myLinkedList.getLength();
}
