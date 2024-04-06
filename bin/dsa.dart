import 'package:dsa/dsa.dart' as dsa;

import 'linkedlist/doubly_linkedlist.dart';
import 'linkedlist/linkedlist.dart';

void main(List<String> arguments) {
  LinkedList myDoublyLinkedList = LinkedList(1);
  myDoublyLinkedList.append(1);
  myDoublyLinkedList.append(2);
  myDoublyLinkedList.append(3);
  myDoublyLinkedList.append(3);
  myDoublyLinkedList.deleteDuplicates();
  myDoublyLinkedList.printList();
}
