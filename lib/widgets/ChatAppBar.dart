import 'package:flutter/material.dart';
import 'package:messio/config/Assets.dart';
import 'package:messio/config/Palette.dart';

class ChatAppBar extends StatelessWidget implements PreferredSizeWidget {
  //const ChatAppBar({Key key}) : super(key: key)implements PreferredSizeWidget;
  final double height = 100;

  @override
  Widget build(BuildContext context) {
    var textHeading = TextStyle(color: Palette.primaryTextColor, fontSize: 20);
    var textStyle = TextStyle(color: Palette.secondaryTextColor);

    double width = MediaQuery.of(context).size.width;

    return Material(
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [BoxShadow(color: Colors.black, blurRadius: 5.0)]),
        child: Container(
          color: Palette.primaryBackgroundColor,
          child: Row(
            children: <Widget>[
              Expanded(
                  flex: 7,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                            height: 70 - (width * .06),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Expanded(
                                    flex: 2,
                                    child: Center(
                                        child: Icon(
                                      Icons.attach_file,
                                      color: Palette.secondaryColor,
                                    ))),
                                Expanded(
                                    flex: 6,
                                    child: Container(
                                        child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Text('Alper OTUZOĞLU',
                                            style: textHeading),
                                        Text('@infelix', style: textStyle)
                                      ],
                                    )))
                              ],
                            )),
                        Container(
                          height: 23,
                          padding: EdgeInsets.fromLTRB(20, 5, 5, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text('Resimler', style: textStyle),
                              VerticalDivider(
                                width: 30,
                                color: Palette.primaryTextColor,
                              ),
                              Text(
                                'Videolar',
                                style: textStyle,
                              ),
                              VerticalDivider(
                                width: 30,
                                color: Palette.primaryTextColor,
                              ),
                              Text(
                                'Dosyalar',
                                style: textStyle,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
              Expanded(
                  flex: 3,
                  child: Container(
                    child: Center(
                      child: CircleAvatar(
                        radius: (80 - (width * .06)) / 2,
                        backgroundImage: Image.asset(
                          Assets.user,
                        ).image,
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
