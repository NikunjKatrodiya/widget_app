import 'package:flutter/material.dart';

class ButtonScreen extends StatefulWidget {
  const ButtonScreen({Key? key}) : super(key: key);

  @override
  State<ButtonScreen> createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> {
  bool iconButton=true;
  int dropDownValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            color: Colors.red,
              padding: EdgeInsets.all(20),
              splashColor: Colors.green,
              highlightColor: Colors.yellow,
              tooltip: "hello",
              iconSize: 70,

              onPressed: () {
              iconButton=!iconButton;
              setState(() {

              });

          }, icon: Icon(Icons.account_box_sharp),),
          
          DropdownButton(
            borderRadius: BorderRadius.circular(30),
              style: TextStyle(color: Colors.pink),
              dropdownColor: Colors.greenAccent,
              iconEnabledColor: Colors.purpleAccent,
              iconDisabledColor: Colors.black,

              hint: Text("Dropdown Button", style: TextStyle(fontSize: 16)),
              value: dropDownValue,

              items: [
            DropdownMenuItem(
              
              value: 1,
              child: Text("Value 1",style: TextStyle(fontSize: 16),),),
                DropdownMenuItem(
                  value: 2,
                  child: Text("Value 2", style: TextStyle(fontSize: 16)),
                ),
                DropdownMenuItem(
                  value: 3,
                  child: Text("Value 3", style: TextStyle(fontSize: 16)),
                ),
          ], onChanged: (value) {
            dropDownValue = value!;
            setState(() {

            });
          },),
          InkWell(
            splashColor: Colors.pink,
            focusColor: Colors.orange,
            
            child: Icon(Icons.contact_phone_sharp),
          onTap: () {

          },),
          
          PopupMenuButton(

            itemBuilder: (context) {
            return List.of([CheckedPopupMenuItem(mouseCursor: SystemMouseCursors.alias,value: 1,child: Icon(Icons.account_box_sharp,),),
              CheckedPopupMenuItem(mouseCursor: SystemMouseCursors.alias,value: 1,child: Icon(Icons.ac_unit),),
              CheckedPopupMenuItem(mouseCursor: SystemMouseCursors.alias,value: 1,child: Icon(Icons.add),)]);
          },),


          OutlinedButton(onPressed: () {

          }, child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 20,
                width: 20,
                color: Colors.deepOrange,
              ),
              Container(
                height: 20,
                width: 20,
                color: Colors.black,
              ),
            ],),),

          ButtonBar(
            children: [
              TextButton(onPressed: () {

              }, child: Container(
                width: 20,
                height: 20,
                color: Colors.deepPurple,
              ),),
              BackButton(
                onPressed: () {

                },
              ),
              RawMaterialButton(
                shape: const StadiumBorder(
                  side: BorderSide(
                    color: Colors.black,
                    width: 3,
                    style: BorderStyle.solid,
                  ),
                ),
                focusColor: Colors.yellowAccent,
                fillColor: Colors.teal,
                onPressed: () {

              },)

            ],
          ),


      ],),),
    );
  }
}
