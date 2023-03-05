import 'package:flutter/material.dart';
import 'package:slide_to_confirm/slide_to_confirm.dart';

class SwipButtonScreen extends StatefulWidget {
  const SwipButtonScreen({Key? key}) : super(key: key);

  @override
  State<SwipButtonScreen> createState() => _SwipButtonScreenState();
}

class _SwipButtonScreenState extends State<SwipButtonScreen> {
  int _counter = 0;

  void confirm() {
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.blueAccent.withOpacity(0.5),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Center(
                child: Text(
                  _counter.toString(),
                  style: TextStyle(
                    fontSize: 38,
                    color: Colors.white,
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 50, bottom: 100),
                  child: ConfirmationSlider(
                    onConfirmation: () => confirm(),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
