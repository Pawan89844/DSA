import 'package:dsa/dsa.dart' as dsa;
import 'queue/queue.dart';
import 'stack/stack.dart';

void main(List<String> arguments) {
  Queue myQueue = Queue(1);
  myQueue.enqueue(2);
  myQueue.enqueue(3);

  myQueue.printList();
  myQueue.getFirst();
  myQueue.getLast();
  myQueue.getHeight();
}
