import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grocery/Watermeloncounter.dart';
import 'package:grocery/applecounter.dart';
import 'package:grocery/bananacounter.dart';
import 'package:grocery/grapescounter.dart';
import 'package:grocery/kiwicounter.dart';
import 'package:grocery/orangecounter.dart';
import 'package:grocery/pineapplecounter.dart';
import 'package:grocery/strawberrycounter.dart';
class Fruits extends StatefulWidget {
  const Fruits({key}) : super(key: key);

  @override
  _FruitsState createState() => _FruitsState();
}

class _FruitsState extends State<Fruits> {
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
                      child: InkWell(
                        child: Container(
                          child: Text(
                            "Apple",
                          ),
                          padding: EdgeInsets.only(top: 40, left: 50),
                          margin: EdgeInsets.only(left: 25.0, right: 25.0),
                          //height: 170.0,
                          decoration: BoxDecoration(
                            color: Color(0xffF4DEF8),
                            borderRadius: BorderRadius.circular(25),
                            image: DecorationImage(
                              image: AssetImage("assets/images/apple.png")
                            )
                          ),
                        ),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => applecounter()));
                        },
                      ),
                    ),
                    SizedBox(
                      height: 180.0,
                      width: 200.0,
                      child: InkWell(
                        child: Container(
                          child: Text(
                            "Banana",
                          ),
                          padding: EdgeInsets.only(top: 80, left: 50),
                          margin: EdgeInsets.only(left: 25.0, right: 25.0),
                          //  height: 230.0,
                          decoration: BoxDecoration(
                            color: Color(0xffFFF2C5),
                            borderRadius: BorderRadius.circular(25),
                              image: DecorationImage(
                                  image: AssetImage("assets/images/banana.jpg")
                              )
                          ),
                        ),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => bananacounter()));
                        },
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
                      child: InkWell(
                        child: Container(
                          child: Text(
                            "Waterlmelon",
                          ),
                          padding: EdgeInsets.only(top: 150, left: 35),
                          margin: EdgeInsets.only(left: 25.0, right: 25.0, top: 40),
                          //  height: 230.0,
                          decoration: BoxDecoration(
                            color: Color(0xffFFF2C5),
                            borderRadius: BorderRadius.circular(25),
                              image: DecorationImage(
                                  image: AssetImage("assets/images/summer.png")
                              )
                          ),
                        ),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => watermeleoncounter()));
                        },
                      ),
                    ),
                    SizedBox(
                      height: 100.0,
                      width: 190.0,
                      child: InkWell(
                        child: Container(
                          child: Text(
                            "Kiwi",
                          ),
                          padding: EdgeInsets.only(top: 85, left: 50),
                          margin: EdgeInsets.only(left: 25.0, right: 25.0),
                          //height: 170.0,
                          decoration: BoxDecoration(
                            color: Color(0xffF4DEF8),
                            borderRadius: BorderRadius.circular(25),
                              image: DecorationImage(
                                  image: AssetImage("assets/images/kiwi.png")
                              )
                          ),
                        ),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => kiwicounter()));
                        },
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
                      child: InkWell(
                        child: Container(
                          child: Text(
                            "Strawberry",
                          ),
                          padding: EdgeInsets.only(top: 85, left: 35),
                          margin: EdgeInsets.only(left: 25.0, right: 25.0),
                          //height: 170.0,
                          decoration: BoxDecoration(
                            color: Color(0xffF4DEF8),
                            borderRadius: BorderRadius.circular(25),
                              image: DecorationImage(
                                  image: AssetImage("assets/images/strawberry.png")
                              )
                          ),
                        ),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => strawberrycounter()));
                        },
                      ),
                    ),
                    SizedBox(
                      height: 210.0,
                      width: 200.0,
                      child: InkWell(
                        child: Container(
                          child: Text(
                            "Grapes",
                          ),
                          padding: EdgeInsets.only(top: 140, left: 50),
                          margin: EdgeInsets.only(left: 25.0, right: 25.0, top: 40),
                          //  height: 230.0,
                          decoration: BoxDecoration(
                            color: Color(0xffFFF2C5),
                            borderRadius: BorderRadius.circular(25),
                              image: DecorationImage(
                                  image: AssetImage("assets/images/grapes.png")
                              )
                          ),
                        ),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => grapescounter()));
                        },
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
                      child: InkWell(
                        child: Container(
                          child: Text(
                            "Pineapple",
                          ),
                          padding: EdgeInsets.only(top: 80, left: 45),
                          margin: EdgeInsets.only(left: 25.0, right: 25.0, top: 40),
                          //  height: 230.0,
                          decoration: BoxDecoration(
                            color: Color(0xffFFF2C5),
                            borderRadius: BorderRadius.circular(25),
                              image: DecorationImage(
                                  image: AssetImage("assets/images/pineapplee.png")
                              )
                          ),
                        ),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => pineapplecounter()));
                        },
                      ),
                    ),
                    SizedBox(
                      height: 100.0,
                      width: 190.0,
                      child: InkWell(
                        child: Container(
                          child: Text(
                            "Orange",
                          ),
                          padding: EdgeInsets.only(top: 40, left: 45),
                          margin: EdgeInsets.only(left: 25.0, right: 25.0),
                          //height: 170.0,
                          decoration: BoxDecoration(
                            color: Color(0xffF4DEF8),
                            borderRadius: BorderRadius.circular(25),
                              image: DecorationImage(
                                  image: AssetImage("assets/images/orange.jpg")
                              )
                          ),
                        ),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => orangecounter()));
                        },
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
