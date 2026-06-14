import 'package:flutter_test/flutter_test.dart';

import 'package:todo/main.dart';

void main() {
  testWidgets('App displays To-Do App title', (WidgetTester tester) async {
    await tester.pumpWidget(const TodoApp());

    expect(find.text('To-Do App'), findsOneWidget);
  });
}
