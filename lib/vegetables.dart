import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Vegetables extends StatefulWidget {
  const Vegetables({key}) : super(key: key);

  @override
  _VegetablesState createState() => _VegetablesState();
}

class _VegetablesState extends State<Vegetables> {
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
                          "Potato",
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
                          "Brinjal",
                        ),
                        padding: EdgeInsets.only(top: 80, left: 55),
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
                          "Onion",
                        ),
                        padding: EdgeInsets.only(top: 80, left: 55),
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
                          "Tomato",
                        ),
                        padding: EdgeInsets.only(top: 40, left: 45),
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
                          "Cabbage",
                        ),
                        padding: EdgeInsets.only(top: 40, left: 40),
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
                          "Carrot",
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
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 210.0,
                      width: 200.0,
                      child: Container(
                        child: Text(
                          "Radish",
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
                          "Mushroom",
                        ),
                        padding: EdgeInsets.only(top: 40, left: 35),
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
                          "Ginger",
                        ),
                        padding: EdgeInsets.only(top: 40, left: 45),
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
                          "Garlic",
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
