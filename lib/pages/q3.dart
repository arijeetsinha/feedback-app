import 'package:flutter/material.dart';
import 'package:feedbackapp/pages/q4.dart';

class Q3 extends StatefulWidget {
  double rating = 0.0;
  Q3(this.rating);
  @override
  _Q3State createState() => _Q3State();
}

class _Q3State extends State<Q3> {
  @override
  double rating3 = 0.0;
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
              Text("Q3"),
              Text("How was the sound quality?"),
              Slider(
                value: rating3,
                onChanged: (newRating) {
                  setState(() => rating3 = newRating);
                },
                min: 1.0,
                max: 5.0,
                divisions: 4,
                label: '$rating3',
              ),
              ElevatedButton(
                onPressed: () {
                  rating3 = rating3 + widget.rating;
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Q4(rating3)),
                  );
                },
                child: Text("Next"),
              )
            ],
          ),
        )));
  }
}
