import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:brainiac_plus/main.dart';

void main() {
  testWidgets('BrainiacPlusApp renders without crashing', (WidgetTester tester) async {
    // Build our app wrapped in ProviderScope and trigger a frame.
    await tester.pumpWidget(
      const ProviderScope(
        child: BrainiacPlusApp(),
      ),
    );

    // Verify that the app renders with the correct title
    expect(find.byType(MaterialApp), findsOneWidget);
  });
}
