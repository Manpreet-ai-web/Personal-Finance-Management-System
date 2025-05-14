// This is a basic Flutter widget test for PFMS.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:pfms2/main.dart';

void main() {
  testWidgets('PFMS navigation test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const PFMSApp());

    // Verify that the app starts on the Dashboard screen.
    expect(find.text('Dashboard Screen - Work in Progress'), findsOneWidget);
    expect(find.text('Transactions Screen - Work in Progress'), findsNothing);

    // Tap the Transactions tab in the bottom navigation bar.
    await tester.tap(find.byIcon(Icons.list));
    await tester.pumpAndSettle(); // Wait for navigation to complete.

    // Verify that the app switches to the Transactions screen.
    expect(find.text('Dashboard Screen - Work in Progress'), findsNothing);
    expect(find.text('Transactions Screen - Work in Progress'), findsOneWidget);
  });
}