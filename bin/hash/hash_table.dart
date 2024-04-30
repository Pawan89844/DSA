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
        print('  {${temp.key}= ${temp.value}}');
        temp = temp.next;
      }
    }
  }

  int _hash(String key) {
    //1. Declare hash with 0
    //2. Loop input keys characters
    //3. Assign each char into asci value
    //4. Multiply ASCII Value to any prime number and then
    //   divide the length using modulus operator
    //   so that it should return the value within the range of data length (0-7)
    //5. return hash
    int hash = 0;
    for (int keyChar in key.runes) {
      int asciValue = keyChar;
      hash = (hash + asciValue * 23) % _dataMap.length;
    }
    return hash;
  }

  void set(String key, int value) {
    int index = _hash(key);
    HashNode newNode = HashNode(key, value);
    if (_dataMap[index] == null) {
      _dataMap[index] = newNode;
    } else {
      HashNode? temp = _dataMap[index];
      while (temp?.next != null) {
        temp = temp?.next;
      }
      temp?.next = newNode;
    }
  }

  int get(String key) {
    int index = _hash(key);
    HashNode? temp = _dataMap[index];
    while (temp != null) {
      if (temp.key == key) return temp.value;
      temp = temp.next;
    }
    return 0;
  }

  List keys() {
    List<String> allKeys = <String>[];
    for (int i = 0; i < _dataMap.length; i++) {
      HashNode? temp = _dataMap[i];
      while (temp != null) {
        allKeys.add(temp.key);
        temp = temp.next;
      }
    }
    return allKeys;
  }
}
