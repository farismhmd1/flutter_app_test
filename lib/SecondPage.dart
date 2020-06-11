import 'package:flutter/material.dart';
import 'package:flutter_app_test/ThirdPage.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                // Navigate back to first route when tapped.
                Navigator.pop(context);
              },
              child: Text('Go back!'),
            ),
            RaisedButton(
              onPressed: () {
                // Navigate  to next
                _navigateToNextScreen(context);
              },
              child: Text('Next'),
            ),

          ],
        ),


      ),
      backgroundColor: Colors.green,
    );
  }

  void _navigateToNextScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ThirdPage()),
    );
  }

}