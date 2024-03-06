import 'hash_node.dart';

class HashTable {
  final int _size = 7;
  late List<HashNode?> _dataMap;

  HashTable() {
    _dataMap = List<HashNode?>.filled(_size, null);
  }

  void printTable() {
    for (int i = 0; i < _dataMap.length; i++) {
      print('$i:');
      HashNode? temp = _dataMap[i];
      while (temp != null) {
        print('  {  ${temp.key} + = + ${temp.value} }');
        temp = temp.next;
      }
    }
  }

  int _hash(String key) {
    int hash = 0;
    List<String> keyChar = key.trim().split('');
    for (int i = 0; i < keyChar.length; i++) {
      int asciValue = keyChar[i].codeUnitAt(i);
      hash = (hash + asciValue * 23) % _dataMap.length;
    }
    return hash;
  }
}
