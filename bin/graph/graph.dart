import 'dart:collection';

class Graph {
  final Map<String, List<String>> _adjList = {};
  // Map<String, List<String>> _adjList = {};

  void addVertex(String vertex) {
    _adjList[vertex] = [];
  }

  void addEdge(String vertex1, String vertex2) {
    if (!_adjList.containsKey(vertex1)) {
      addVertex(vertex1);
    }
    if (!_adjList.containsKey(vertex2)) {
      addVertex(vertex2);
    }
    _adjList[vertex1]!.add(vertex2);
    _adjList[vertex2]!.add(vertex1);
  }

  bool removeEdge(String vertex1, String vertex2) {
    if (_adjList[vertex1] != null && _adjList[vertex2] != null) {
      _adjList[vertex1]?.remove(vertex2);
      _adjList[vertex2]?.remove(vertex1);
      return true;
    } else {
      return false;
    }
  }

  bool removeVertex(String vertex) {
    if (_adjList[vertex] == null) return false;
    for (String otherVertex in _adjList[vertex]!) {
      _adjList[otherVertex]?.remove(vertex);
    }
    _adjList.remove(vertex);
    return true;
  }

  void printGraph() {
    print('Graph: $_adjList');
  }
}
