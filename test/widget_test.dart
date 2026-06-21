import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:umkm_finance_mobile/main.dart';
import 'package:umkm_finance_mobile/providers/finance_provider.dart';

void main() {
  testWidgets('App title and loading state test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      ChangeNotifierProvider(
        create: (_) => FinanceProvider(),
        child: const UmkmFinanceApp(),
      ),
    );

    // Verify that the title 'Keuangan UMKM' is rendered.
    expect(find.text('Keuangan UMKM'), findsOneWidget);
  });
}
