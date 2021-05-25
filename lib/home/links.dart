import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';

class Links extends StatefulWidget {
  @override
  _LinksState createState() => _LinksState();
}

class _LinksState extends State<Links> {
  @override
  Widget build(BuildContext context) {
    return  Container(
        child: Column(
          children: <Widget>[
            SizedBox(width: 10,),
            Align(
                alignment: Alignment.centerLeft,
                child:Text(
                    "  LINK",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,

                    )
                )
            ),

            Align(
              alignment: Alignment.centerLeft,
              child:RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: '   Aayush Github Link',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.blue,
                            decoration: TextDecoration.underline),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            launchURL;
                            print('You used Aayush!');
                          })
                  ])),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child:RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: '   Abhinav Github Link',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.blue,
                            decoration: TextDecoration.underline),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            print('You clicked Abhinav on me!');
                          })
                  ])),
            ),

          ],
        )
    );
  }
}

launchURL() async {
  const url = 'https://flutter.io';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}