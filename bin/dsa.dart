import 'package:dsa/dsa.dart' as dsa;

import 'algorithms/quick sort/quick_sort.dart';

void main(List<String> arguments) {
  List<int> array = [4, 6, 1, 7, 3, 2, 5];
  QuickSort.quickSort(array, 0, array.length - 1);

  print('Array : $array');
}
