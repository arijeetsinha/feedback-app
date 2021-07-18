import 'package:flutter/material.dart';
import 'package:feedbackapp/pages/q2.dart';

class Q1 extends StatefulWidget {
  @override
  _Q1State createState() => _Q1State();
}

class _Q1State extends State<Q1> {
  @override
  double rating1 = 1.0;
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("FeedbackApp"),
          centerTitle: true,
        ),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(100.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text("Q1"),
              Text("How did you like the service?"),
              Row(
                children: [
                  Text("$rating1"),
                  Expanded(
                    child: Slider(
                      value: rating1,
                      onChanged: (newRating) {
                        setState(() => rating1 = newRating);
                      },
                      min: 1,
                      max: 5,
                      divisions: 4,
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Q2(rating1)),
                  );
                },
                child: Text("Next"),
              )
            ],
          ),
        )));
  }
}
