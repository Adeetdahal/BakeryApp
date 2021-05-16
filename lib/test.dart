import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        leading: InkWell(
            child: Icon(Icons.arrow_back),
                onTap: (){
              Navigator.pop(context);
      },
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30.0),
            Text('TESTING PAGE',style: TextStyle(fontSize: 35.0),),
          ],
        ),
      ),
    );
  }
}
