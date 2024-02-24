import 'package:dsa/dsa.dart' as dsa;

import 'linkedlist/linkedlist.dart';

void main(List<String> arguments) {
  LinkedList myLinkedList = LinkedList(1);

  myLinkedList.append(2);
  myLinkedList.append(3);
  myLinkedList.append(4);
  myLinkedList.remove(2);
  myLinkedList.printList();
}
