import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:messio/pages/ConversationPage.dart';
import 'package:messio/widgets/ChatAppBar.dart';
import 'package:messio/widgets/ChatListWidget.dart';

void main() {
  MaterialApp app = MaterialApp(
    home: Scaffold(
      body: ConversationPage(),
    ),
  );

  testWidgets('ConversationPage UI Test', (WidgetTester tester) async {
    await tester.pumpWidget(app);

    expect(find.byType(ChatAppBar), findsOneWidget);

    expect(find.byType(ChatListWidget), findsOneWidget);
  });
}
