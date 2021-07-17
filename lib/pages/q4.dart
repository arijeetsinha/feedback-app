import 'package:flutter/material.dart';
import 'package:feedbackapp/pages/q5.dart';

class Q4 extends StatefulWidget {
  double rating = 0.0;
  Q4(this.rating);
  @override
  _Q4State createState() => _Q4State();
}

class _Q4State extends State<Q4> {
  @override
  double rating4 = 0.0;
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
              Text("Q4"),
              Text("How was the lighting?"),
              Slider(
                value: rating4,
                onChanged: (newRating) {
                  setState(() => rating4 = newRating);
                },
                min: 1.0,
                max: 5.0,
                divisions: 4,
                label: '$rating4',
              ),
              ElevatedButton(
                onPressed: () {
                  rating4 = rating4 + widget.rating;
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Q5(rating4)),
                  );
                },
                child: Text("Next"),
              )
            ],
          ),
        )));
  }
}
