import 'package:flutter/material.dart';
import 'package:grocery/fruits.dart';

class applecounter extends StatefulWidget {
  const applecounter({key}) : super(key: key);

  @override
  _applecounterState createState() => _applecounterState();
}

class _applecounterState extends State<applecounter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 300, 30, 10),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Enter Quantity of Apples in KG"
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20,),
            RaisedButton(
              color: Colors.blue,
              child: Text("Done", style: TextStyle(
                color: Colors.white
              ),),
              onPressed: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (context)=>Fruits()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
