import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Drinks extends StatefulWidget {
  const Drinks({key}) : super(key: key);

  @override
  _DrinksState createState() => _DrinksState();
}

class _DrinksState extends State<Drinks> {
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
                          "Milk",
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
                      height: 180.0,
                      width: 200.0,
                      child: Container(
                        child: Text(
                          "Butter Milk",
                        ),
                        padding: EdgeInsets.only(top: 80, left: 40),
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
                          "Mineral Water",
                        ),
                        padding: EdgeInsets.only(top: 80, left: 35),
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
                          "Pepsi",
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
                          "Coke",
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
                          "Coca Cola",
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
                          "Redbull",
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
                    SizedBox(
                      height: 100.0,
                      width: 190.0,
                      child: Container(
                        child: Text(
                          "Fanta",
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
            ],
          ),
        ),

      ),
    );
  }
}
