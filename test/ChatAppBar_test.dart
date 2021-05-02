import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:messio/widgets/ChatAppBar.dart';

void main() {
  MaterialApp app = MaterialApp(
    home: Scaffold(
      body: ChatAppBar(),
    ),
  );
  testWidgets('ChatAppBar UI Test', (WidgetTester tester) async {
    await tester.pumpWidget(app);

    expect(find.text('Alper'), findsOneWidget);
    expect(find.text('@infelix'), findsOneWidget);
    expect(find.byType(IconButton), findsNWidgets(1));
    expect(find.byType(CircleAvatar), findsOneWidget);
  });
}
