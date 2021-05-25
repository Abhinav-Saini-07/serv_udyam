import 'package:flutter/material.dart';
import 'package:serv_udyam/home/banner.dart';
import 'package:serv_udyam/home/DropDown.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/material/bottom_navigation_bar.dart';
import 'package:serv_udyam/home/grid.dart';
import 'links.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:serv_udyam/Constants.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        elevation: 10,
        leading: Container(
        //  child: Image.asset("slogo.png"),
        ),
        title: Text(
          "Servudyam",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.language),
            onPressed: null,
          )
        ],
      ),

    body: Container(
      child: ListView(
          children: [
            SizedBox(height: 20,),
            CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 16/9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
            ),
            items: [
              Container(
                  height: 180.0,
                  width: 500.0,
                  decoration: new BoxDecoration(
                    border: Border.all(
                      color: Colors.transparent,
                      width: 8,
                    ),

                    gradient: LinearGradient(colors: [
                      Colors.blue,
                      Colors.lightBlueAccent,
                    ]),
                    image: DecorationImage(
                      image: AssetImage('assets/Image1.png'),
                      fit: BoxFit.fill,
                    ),
                    shape: BoxShape.rectangle,
                  )

              ),
              Container(
                  height: 180.0,
                  width: 500.0,
                  decoration: new BoxDecoration(
                    border: Border.all(
                      color: Colors.transparent,
                      width: 8,
                    ),

                    gradient: LinearGradient(colors: [
                      Colors.blue,
                      Colors.lightBlueAccent,
                    ]),
                    image: new DecorationImage(
                      image: new AssetImage('assets/Image2.png'),
                      fit: BoxFit.fill,
                    ),
                    shape: BoxShape.rectangle,
                  )

              ),
              Container(
                  height: 180.0,
                  width: 500.0,
                  decoration: new BoxDecoration(
                    border: Border.all(
                      color: Colors.transparent,
                      width: 8,
                    ),

                    gradient: LinearGradient(colors: [
                      Colors.blue,
                      Colors.lightBlueAccent,
                    ]),
                    image: new DecorationImage(
                      image: new AssetImage('assets/Images3.png'),
                      fit: BoxFit.fill,
                    ),
                    shape: BoxShape.rectangle,
                  )

              ),

            ],
          ),
           // Dropdown(),
            SizedBox(height: 10,),
            Grid(),
            Links(),

          ] ),
    ),
    //   body: SingleChildScrollView(
    //     physics: BouncingScrollPhysics(),
    //     child: Column(
    //     children: <Widget>[
    //       // Container(
    //       //   child: Dropdown(),
    //       // ),
    //       SizedBox(height: 10),
    //       // Row(
    //       //    children: <Widget>[
    //       //      Container(
    //       //        child: BannerAbc(),
    //       //      )
    //       //
    //       //   ],
    //       // ),
    //       Row(
    //
    //       children: <Widget>[
    //         SizedBox(width: 10,),
    //         Container(
    //           width:120,
    //           height:120,
    //           padding: EdgeInsets.fromLTRB(10, 45, 10, 10),
    //           color: Colors.blue[300],
    //           child: Text(
    //             "Furniture",
    //             textAlign: TextAlign.center,
    //           ),
    //         ),
    //         SizedBox(width: 10,),
    //         Container(
    //           width:120,
    //           height:120,
    //           padding: EdgeInsets.fromLTRB(10, 45, 10, 10),
    //           color: Colors.blue[300],
    //           child: Text(
    //             "Cool Roof",
    //             textAlign: TextAlign.center,
    //           ),
    //         ),
    //
    //         SizedBox(width: 10,),
    //         Container(
    //           width:120,
    //           height:120,
    //           padding: EdgeInsets.fromLTRB(10, 45, 10, 10),
    //           color: Colors.blue[300],
    //           child: Text(
    //             "Photo",
    //             textAlign: TextAlign.center,
    //           ),
    //         ),
    //
    //         SizedBox(width: 10,),
    //       ]
    //       ),
    //
    //       SizedBox(height: 10, width: 10,),
    //       SizedBox(width: 10,),
    //
    //       Row(
    //         children: <Widget>[
    //           SizedBox(width: 10,),
    //
    //           Container(
    //             width:120,
    //             height:120,
    //             padding: EdgeInsets.fromLTRB(10, 45, 10, 10),
    //             color: Colors.blue[300],
    //             child: Text(
    //               "Construction",
    //               textAlign: TextAlign.center,
    //             ),
    //           ),
    //           SizedBox(width: 10,),
    //           Container(
    //             width:120,
    //             height:120,
    //             padding: EdgeInsets.fromLTRB(10, 45, 10, 10),
    //             color: Colors.blue[300],
    //             child: Text(
    //               "Modular Kitchen",
    //               textAlign: TextAlign.center,
    //             ),
    //           ),
    //         ],
    //       ),
    //       SizedBox(height: 10),
    //       // Container(
    //       //   child: Dropdown(),
    //       // ),
    //
    //      // Links(),
    //
    // ],
    //     )
    //
    //   ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            backgroundColor: kPrimaryColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt),
           title: Text('Requirements'),
            backgroundColor: kPrimaryColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            title: Text('Chat'),
            backgroundColor: kPrimaryColor,
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
            backgroundColor: kPrimaryColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone),
            title: Text('Ask the Expert'),
            backgroundColor: kPrimaryColor,
          ),
        ],
      ),
    );
  }
}
