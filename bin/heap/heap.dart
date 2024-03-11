import 'package:collection/collection.dart';
import 'ext_methods.dart';

class Heap {
  List<int>? _heap;

  Heap() {
    _heap = <int>[];
  }

  List<int> getHeap() {
    return _heap as List<int>;
  }

  int _leftChild(int index) {
    return 2 * index + 1;
  }

  int _rightChild(int index) {
    return 2 * index + 2;
  }

  int _parent(int index) {
    int temp = (index - 1) ~/ 2;
    // int numb = int.parse(temp.isNegative ? '0' : temp.toStringAsFixed(0));
    return temp;
  }

  void _swap(int index1, int index2) {
    int temp = _heap!.get(index1);
    // _heap?.insert(index1, _heap?.get(index1, _heap as List<int>) as int);
    _heap?.set(index1, _heap!.get(index2));
    // _heap?.insert(index2, temp as int);
    _heap?.set(index2, temp);
  }

  void insert(int value) {
    _heap?.add(value);
    int current = (_heap?.length as int) - 1;
    // int parent = _heap!.get(_parent(current));
    while (current > 0 && _heap!.get(current) > _heap!.get(_parent(current))) {
      _swap(current, _parent(current));
      current = _parent(current);
    }
  }
}
