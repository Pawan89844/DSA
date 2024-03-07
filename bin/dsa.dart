import 'package:dsa/dsa.dart' as dsa;
import 'binarysearchtree/binary_search_tree.dart';
import 'hash/hash_table.dart';

void main(List<String> arguments) {
  HashTable myHashTable = HashTable();
  myHashTable.set('nails', 100);
  myHashTable.set('tile', 50);
  myHashTable.set('lumber', 80);
  // myHashTable.printTable();
  print(myHashTable.get('lumber'));
  print(myHashTable.get('bolts'));
}
