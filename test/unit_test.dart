// import 'package:dars_6/main.dart';
import 'package:dars_6/screens/calculator.dart';
import 'package:dars_6/screens/home_screen.dart';
// import 'package:dars_6/screens/calculator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('my app test', () {
    test('my app test', () {
      final calculator = Calculator();

      expect(calculator.add(10, 5), 15);
      expect(calculator.add(10, 1), 11);
      expect(calculator.add(10, 5), 15);
      expect(calculator.substart(10, 5), 5);
      expect(calculator.substart(1, 5), -4);
    });
  });

  testWidgets('Widgetlarni tekshirish', (widgetsTester) async {
    // ? MyApp widget
    await widgetsTester.pumpWidget(const MaterialApp(home: HomeScreen()));

    expect(find.byType(TextField), findsNWidgets(2));
    expect(find.byKey(const ValueKey('a')), findsOneWidget);
    expect(find.byKey(const ValueKey('b')), findsOneWidget);
  });

  testWidgets('button', (widgetsTester) async {
    // ? MyApp widget
    await widgetsTester.pumpWidget(const MaterialApp(home: HomeScreen()));

    expect(find.byType(TextField), findsNWidgets(2));
    expect(find.byKey(const ValueKey('add')), findsOneWidget);
    expect(find.byKey(const ValueKey('remove')), findsOneWidget);
  });
}
