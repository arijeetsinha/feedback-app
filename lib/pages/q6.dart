import 'package:flutter/material.dart';
import 'package:feedbackapp/pages/final.dart';

class Q6 extends StatefulWidget {
  double rating = 0.0;
  Q6(this.rating);
  @override
  _Q6State createState() => _Q6State();
}

class _Q6State extends State<Q6> {
  @override
  double rating6 = 0.0;
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
              Text("Q6"),
              Text("How likely are you to come back here?"),
              Slider(
                value: rating6,
                onChanged: (newRating) {
                  setState(() => rating6 = newRating);
                },
                min: 0.0,
                max: 5.0,
                divisions: 5,
                label: '$rating6',
              ),
              ElevatedButton(
                onPressed: () {
                  rating6 = rating6 + widget.rating;
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Final(rating6)),
                  );
                },
                child: Text("Next"),
              )
            ],
          ),
        )));
  }
}
