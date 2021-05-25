import 'package:flutter/material.dart';

class Grid extends StatefulWidget {
  @override
  _GridState createState() => _GridState();
}

class _GridState extends State<Grid> {
  @override
  Widget build(BuildContext context) {
    return Column(
            children: <Widget>[
              // Container(
              //   child: Dropdown(),
              // ),
              SizedBox(height: 10),
              // Row(
              //    children: <Widget>[
              //      Container(
              //        child: BannerAbc(),
              //      )
              //
              //   ],
              // ),
              Row(

              children: <Widget>[
                SizedBox(width: 10,),
                Container(
                  width:120,
                  height:90,
                  padding: EdgeInsets.fromLTRB(10, 35, 10, 10),
                  color: Colors.blue[300],
                  child: Text(
                    "Furniture",
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  width:120,
                  height:90,
                  padding: EdgeInsets.fromLTRB(10, 35, 10, 10),
                  color: Colors.blue[300],
                  child: Text(
                    "Cool Roof",
                    textAlign: TextAlign.center,
                  ),
                ),

                SizedBox(width: 10,),
                Container(
                  width:120,
                  height:90,
                  padding: EdgeInsets.fromLTRB(10, 35, 10, 10),
                  color: Colors.blue[300],
                  child: Text(
                    "Photo",
                    textAlign: TextAlign.center,
                  ),
                ),

                SizedBox(width: 10,),
              ]
              ),

              SizedBox(height: 10, width: 10,),
              SizedBox(width: 10,),

              Row(
                children: <Widget>[
                  SizedBox(width: 10,),

                  Container(
                    width:120,
                    height:90,
                    padding: EdgeInsets.fromLTRB(10, 35, 10, 10),
                    color: Colors.blue[300],
                    child: Text(
                      "Construction",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    width:120,
                    height:90,
                    padding: EdgeInsets.fromLTRB(10, 35, 10, 10),
                    color: Colors.blue[300],
                    child: Text(
                      "Modular Kitchen",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              // Container(
              //   child: Dropdown(),
              // ),

             // Links(),

        ],
            );

  }
}
