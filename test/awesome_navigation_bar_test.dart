import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:awesome_navigation_bar/awesome_navigation_bar.dart';

void main() {
  testWidgets('AwesomeNavigationBar has correct items',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: const Placeholder(),
          bottomNavigationBar: AwesomeNavigationBar(
            currentIndex: 0,
            onTap: (index) {},
          ),
        ),
      ),
    );

    // Verify that the AwesomeNavigationBar has the correct number of items.
    expect(find.byType(BottomNavigationBar), findsOneWidget);

    // Verify that there are five BottomNavigationBarItem widgets.
    expect(find.byType(BottomNavigationBarItem), findsNWidgets(5));

    // TODO: Add more specific widget tests for each BottomNavigationBarItem if needed.
  });

  // Add more tests as needed.
}
