import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LastScreen extends StatelessWidget {
  const LastScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.blue,
            Colors.red,
          ],
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
            Text(
              'Crash Confirmed',
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Monitering using activity',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            CircularProgressIndicator(),
            SizedBox(
              height: 15,
            ),
            Text(
              'A Crash analytics as per the device the',
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.white,
              ),
            ),
            RaisedButton(
              child: Text('Call 999'),
              onPressed: () {},
            ),
            RaisedButton(
                child: Text('I AM OK'),
                onPressed:(){},
            ),
//asdasdasas

          ],
        ),
      ),
    );
  }
}
