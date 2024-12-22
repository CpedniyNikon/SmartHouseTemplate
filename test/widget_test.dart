import 'package:flutter_test/flutter_test.dart';
import 'package:vikrf_thesis/core/internal/application.dart';


void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const Application());
  });
}
