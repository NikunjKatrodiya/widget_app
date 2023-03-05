import 'package:flutter/material.dart';

class SnakBarScreen extends StatefulWidget {
  const SnakBarScreen({Key? key}) : super(key: key);

  @override
  State<SnakBarScreen> createState() => _SnakBarScreenState();
}

class _SnakBarScreenState extends State<SnakBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(20),
        child: Column(
            children:[
            ElevatedButton(
            onPressed: (){
      ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        backgroundColor: Colors.red,
      duration: Duration(seconds: 1),

      content: Text('Hello This is Snackbar'),
      )
      );
      },
        child: Text("Show Snackbar"),
      ),
      ],
    ),
    ),
    );
  }
}
