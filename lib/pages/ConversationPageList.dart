import 'package:flutter/material.dart';
import 'ConversationPage.dart';

class ConversationPageList extends StatefulWidget {
  @override
  _ConversationPageListState createState() => _ConversationPageListState();
  ConversationPageList();
}

class _ConversationPageListState extends State<ConversationPageList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageView(
        children: [
          ConversationPage(),
          ConversationPage(),
          ConversationPage(),
        ],
      ),
    );
  }
}
