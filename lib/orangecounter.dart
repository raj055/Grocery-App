import 'package:flutter/material.dart';
import 'package:grocery/fruits.dart';

class orangecounter extends StatefulWidget {
  const orangecounter({key}) : super(key: key);

  @override
  _orangecounterState createState() => _orangecounterState();
}

class _orangecounterState extends State<orangecounter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 300, 30, 10),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  hintText: "Enter Quantity of Orange in KG"
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
