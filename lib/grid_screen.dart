import 'package:flutter/material.dart';
import 'dart:math';

class GreedScreen extends StatefulWidget {
  const GreedScreen({Key? key}) : super(key: key);

  @override
  State<GreedScreen> createState() => _GreedScreenState();
}

class _GreedScreenState extends State<GreedScreen> {

  dynamic colorcode=0xFFffffff;
  Random random=Random();
  int index = 0;
  List colorList = [];
  void generateColor(){
    colorcode=Random().nextInt(0XFFffffff);
    index++;
    colorList.add(colorcode);
    setState(() {

    }

    );


  }
  void changeColor(){
    if(index!=0){
      index--;
    }
setState(() {

});
  }
  void initState() {
    // TODO: implement initState
    colorList.add(colorcode);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Background Color"),


        ),
        backgroundColor: Color(colorList[index]),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              FloatingActionButton(
                onPressed: () {
                  generateColor();
                },child: const Icon(Icons.add),),
              const SizedBox(
                width: 100,
              ),
              FloatingActionButton(onPressed: () {
                changeColor();
              },child: const Icon(Icons.remove),),
            ],
          ),
        ),
      ),
    );
  }
}
