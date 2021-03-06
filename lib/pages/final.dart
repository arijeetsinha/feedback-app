import 'package:flutter/material.dart';

class Final extends StatefulWidget {
  double rating = 0.0;
  Final(this.rating);
  @override
  _FinalState createState() => _FinalState();
}

class _FinalState extends State<Final> {
  @override
  Text text(double r) {
    if (r <= 10.0) {
      return Text("We are sorry for your inconvenience",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.red,
            fontSize: 28.0,
          ));
    } else if (r <= 20) {
      return Text("Hope we serve you better next time",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.yellow,
            fontSize: 28.0,
          ));
    } else {
      return Text("We hope you come back next time.",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.green,
            fontSize: 28.0,
          ));
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Feedback App"),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  text(widget.rating),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                          '/', (Route<dynamic> route) => false);
                    },
                    child: Text("Restart"),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
