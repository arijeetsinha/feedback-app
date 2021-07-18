import 'package:flutter/material.dart';
import 'package:feedbackapp/pages/q3.dart';

class Q2 extends StatefulWidget {
  double rating = 0.0;
  Q2(this.rating);
  @override
  _Q2State createState() => _Q2State();
}

class _Q2State extends State<Q2> {
  @override
  double rating2 = 1.0;
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
              Text("Q2"),
              Text("How did you appreciate the sanitation?"),
              Row(
                children: [
                  Text("$rating2"),
                  Expanded(
                    child: Slider(
                      value: rating2,
                      onChanged: (newRating) {
                        setState(() => rating2 = newRating);
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
                  rating2 = rating2 + widget.rating;
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Q3(rating2)),
                  );
                },
                child: Text("Next"),
              )
            ],
          ),
        )));
  }
}
