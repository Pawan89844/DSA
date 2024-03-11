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
    return (index - 1) ~/ 2;
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

  void _sinkDown(int index) {
    int maxIndex = index;
    while (true) {
      int rightIndex = _rightChild(index);
      int leftIndex = _leftChild(index);

      if (leftIndex < _heap!.length &&
          _heap!.get(leftIndex) > _heap!.get(maxIndex)) {
        maxIndex = leftIndex;
      }
      if (rightIndex < _heap!.length &&
          _heap!.get(rightIndex) > _heap!.get(maxIndex)) {
        maxIndex = rightIndex;
      }
      if (maxIndex != index) {
        _swap(index, maxIndex);
        index = maxIndex;
      } else {
        return;
      }
    }
  }

  int? remove() {
    // CASE-I EMPTY CASE
    if (_heap?.isEmpty as bool) return null;
    // CASE-II ONE ITEM PRESENT
    if (_heap?.length == 1) return _heap?.removeAt(0);
    // CASE -III MORE THEN ONE ITEM
    int maxValue = _heap!.get(0);
    _heap!.set(0, _heap!.removeAt(_heap!.length - 1));
    _sinkDown(0);
    return maxValue;
  }
}
