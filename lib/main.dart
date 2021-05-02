import 'package:flutter/material.dart';
import 'package:messio/config/Palette.dart';
import 'package:messio/pages/ConversationPage.dart';
import 'package:messio/pages/ConversationPageSlide.dart';

void main() => runApp(Messio());

class Messio extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Messio',
      theme: ThemeData(
        primaryColor: Palette.primaryColor,
      ),
      home: ConversationPageSlide(),
    );
  }
}
