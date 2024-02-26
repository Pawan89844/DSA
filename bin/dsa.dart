import 'package:dsa/dsa.dart' as dsa;

import 'linkedlist/doubly_linkedlist.dart';
import 'linkedlist/linkedlist.dart';

void main(List<String> arguments) {
  DoublyLinkedList myDoublyLinkedList = DoublyLinkedList(1);
  myDoublyLinkedList.append(2);
  myDoublyLinkedList.append(3);
  myDoublyLinkedList.prepend(4);

  myDoublyLinkedList.getHead();
  myDoublyLinkedList.getTail();
  myDoublyLinkedList.getLength();
  myDoublyLinkedList.printList();
}
