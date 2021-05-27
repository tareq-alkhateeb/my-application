import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{
  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter=1;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: (){
              setState(() {

              });
              counter--;
            },
                child: Text('MINUS')),
            Text('$counter'),
            TextButton(onPressed: (){
              setState(() {

              });
              counter++;
            },
                child: Text('PLUS')),
          ],
        ),
      )
    );
    // TODO: implement build


  }
}