import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Bakery extends StatefulWidget {
  const Bakery({ key}) : super(key: key);

  @override
  _BakeryState createState() => _BakeryState();
}

class _BakeryState extends State<Bakery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(FontAwesomeIcons.gripLines),
          onPressed: () {},
          color: Colors.grey,
          tooltip: 'Menu',
        ),
      ),
    body: SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 100.0,
                    width: 190.0,
                    child: Container(
                      child: Text(
                        "Bread",
                      ),
                      padding: EdgeInsets.only(top: 87, left: 50),
                      margin: EdgeInsets.only(left: 25.0, right: 25.0),
                      //height: 170.0,
                      decoration: BoxDecoration(
                        color: Color(0xffF4DEF8),
                        borderRadius: BorderRadius.circular(25),
                          image: DecorationImage(
                              image: AssetImage("assets/images/bread.png")
                          )
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 180.0,
                    width: 200.0,
                    child: Container(
                      child: Text(
                        "Bun",
                      ),
                      padding: EdgeInsets.only(top: 80, left: 65),
                      margin: EdgeInsets.only(left: 25.0, right: 25.0),
                      //  height: 230.0,
                      decoration: BoxDecoration(
                        color: Color(0xffFFF2C5),
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 210.0,
                    width: 200.0,
                    child: Container(
                      child: Text(
                        "Nankhatai",
                      ),
                      padding: EdgeInsets.only(top: 80, left: 45),
                      margin: EdgeInsets.only(left: 25.0, right: 25.0, top: 40),
                      //  height: 230.0,
                      decoration: BoxDecoration(
                        color: Color(0xffFFF2C5),
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100.0,
                    width: 190.0,
                    child: Container(
                      child: Text(
                        "Toast",
                      ),
                      padding: EdgeInsets.only(top: 40, left: 50),
                      margin: EdgeInsets.only(left: 25.0, right: 25.0),
                      //height: 170.0,
                      decoration: BoxDecoration(
                        color: Color(0xffF4DEF8),
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 100.0,
                    width: 190.0,
                    child: Container(
                      child: Text(
                        "Roles",
                      ),
                      padding: EdgeInsets.only(top: 40, left: 50),
                      margin: EdgeInsets.only(left: 25.0, right: 25.0),
                      //height: 170.0,
                      decoration: BoxDecoration(
                        color: Color(0xffF4DEF8),
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 210.0,
                    width: 200.0,
                    child: Container(
                      child: Text(
                        "Biscuits",
                      ),
                      padding: EdgeInsets.only(top: 80, left: 50),
                      margin: EdgeInsets.only(left: 25.0, right: 25.0, top: 40),
                      //  height: 230.0,
                      decoration: BoxDecoration(
                        color: Color(0xffFFF2C5),
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
    );
  }
}

