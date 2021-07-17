import 'package:flutter/material.dart';
import 'package:feedbackapp/pages/q6.dart';

class Q5 extends StatefulWidget {
  double rating = 0.0;
  Q5(this.rating);
  @override
  _Q5State createState() => _Q5State();
}

class _Q5State extends State<Q5> {
  @override
  double rating5 = 0.0;
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
              Text("Q5"),
              Text("How likely are you to recommend us to your friends?"),
              Slider(
                value: rating5,
                onChanged: (newRating) {
                  setState(() => rating5 = newRating);
                },
                min: 0.0,
                max: 5.0,
                divisions: 5,
                label: '$rating5',
              ),
              ElevatedButton(
                onPressed: () {
                  rating5 = rating5 + widget.rating;
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Q6(rating5)),
                  );
                },
                child: Text("Next"),
              )
            ],
          ),
        )));
  }
}
