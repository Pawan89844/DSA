import 'package:test/test.dart';

import '../bin/algorithms/questions.dart';

class QuestionTest {
  void testSum() {
    test('Sum', () {
      Questions questions = Questions();
      expect(questions.sum([1, 2, 5, 6, 8, 9]), 31);
    });
  }
}
