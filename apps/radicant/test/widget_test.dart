import 'package:flutter_test/flutter_test.dart';
import 'package:radicant/app/app.dart';

void main() {
  testWidgets('Radicant App smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const RadicantApp());

    // Verify that our brand text is displayed correctly on start.
    expect(find.text('Radicant'), findsOneWidget);
    expect(find.text('Set your roots in motion.'), findsOneWidget);
  });
}
