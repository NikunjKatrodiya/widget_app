import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwichScreen extends StatefulWidget {
  const SwichScreen({Key? key}) : super(key: key);

  @override
  State<SwichScreen> createState() => _SwichScreenState();
}

class _SwichScreenState extends State<SwichScreen> {
  bool light = true;
  bool switchValue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(20)),
          Switch(
          // This bool value toggles the switch.
          value: light,
          activeColor: Colors.red,
          onChanged: (bool value) {
            // This is called when the user toggles the switch.
            setState(() {
              light = value;

            });
          },
        ),


            CupertinoSwitch(
              // This bool value toggles the switch.
              value: switchValue,
              activeColor: CupertinoColors.activeBlue,
              onChanged: (bool? value) {
                // This is called when the user toggles the switch.
                setState(() {
                  switchValue = value ?? false;
                });
              },
            ),


          ],
        ),
      ),
    );
  }
}
