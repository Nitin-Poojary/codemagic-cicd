import 'package:cicdtest/env.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:cicdtest/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Running on ${Env.envName} environment'), findsOneWidget);
  });
}
