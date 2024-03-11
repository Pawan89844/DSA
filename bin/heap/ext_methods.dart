extension GetListElement on List {
  int get(int index) {
    if (index < 0 || index > length) {
      throw Exception('Error');
    } else {
      return this[index];
    }
  }
}

extension SetElement on List {
  int set(int index, int value) {
    int newItem = value;
    if (isEmpty) {
      add(value);
      newItem = this[index];
      return newItem;
    } else {
      this[index] = value;
      newItem = this[index];
      return newItem;
    }
  }
}
