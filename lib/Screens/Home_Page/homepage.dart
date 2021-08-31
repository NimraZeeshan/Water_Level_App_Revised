import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('EEE d M, y').format(now);
    return Scaffold(
        //drawer: Drawer(),

        body: Stack(
      children: <Widget>[
        Container(
          height: size.height * 0.40,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60),
                bottomRight: Radius.circular(60)),
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  const Color.fromRGBO(150, 218, 233, 100),
                  const Color.fromRGBO(83, 165, 201, 100),
                ]),
          ),
        ),
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                // padding: const EdgeInsets.all(20),
                margin: EdgeInsets.only(left: 15, top: 5),
                alignment: Alignment.center,
                height: 30,
                width: 30,
                // color: Colors.black,
                child: Image.asset(
                  'assets/images/Drawer 4@4x-8.png',
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15, top: 5),
                child: Text(
                  'Welcome,',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 15),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15, top: 5),
                child: Text(
                  'Zeeshan',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 35),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15, top: 0),
                child: Text(
                  'Karachi, Pakistan',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15, top: 0),
                child: Text(
                  formattedDate,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(vertical: 200, horizontal: 50),
              alignment: Alignment.center,
              height: size.height * 0.3,
              width: size.width * 0.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
