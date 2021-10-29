import 'package:flutter/material.dart';
import 'package:grocery/fruits.dart';

class strawberrycounter extends StatefulWidget {
  const strawberrycounter({key}) : super(key: key);

  @override
  _strawberrycounterState createState() => _strawberrycounterState();
}

class _strawberrycounterState extends State<strawberrycounter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 300, 30, 10),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  hintText: "Enter Quantity of Strawberry in KG"
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
