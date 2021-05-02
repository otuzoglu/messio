import 'package:flutter/material.dart';
import 'package:messio/config/Assets.dart';
import 'package:intl/intl.dart';
import 'package:messio/config/Styles.dart';

class ChatRowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(15, 5, 0, 15),
      child: Row(
        children: [
          Expanded(
            flex: 8,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: Image.asset(Assets.user).image,
                ),
                SizedBox(width: 15),
                Container(
                    child: Column(
                  children: [
                    Text('Alper OTUZOĞLU', style: Styles.subHeading),
                    Text(
                      'What\'s up?',
                      style: Styles.subText,
                    )
                  ],
                ))
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  DateFormat('kk:mm').format(
                      DateTime.fromMillisecondsSinceEpoch(1565888474278)),
                  style: Styles.date,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
