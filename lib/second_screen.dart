import 'package:flutter/material.dart';

import 'third_screen.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    double height=size.height;
    double width=size.width;
    double text=MediaQuery.textScaleFactorOf(context);
    return Scaffold(

      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Image(image: AssetImage('assets/images/Group_22.png'),),
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: height*0.07,left:width*0.15),
                          height: height/12,
                          width: height/12,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(width*0.040),
                            boxShadow: const [BoxShadow(
                              blurRadius: 8,
                              offset: Offset(0, 5),

                              color: Color(0XFFFF4800),
                            ),],
                            color: const Color(0XFFFF4800),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left:width*0.1),
                          child: Text("LIVSARRE",style: TextStyle(height: 9,fontSize: text*22,fontWeight: FontWeight.bold),),),
                        Container(margin: EdgeInsets.only(left: width*0.08),
                          child: const  Text("Votre coursier local",style: TextStyle(color: Color(0XFF959BA4),height: 16,),),),
                      ],
                    ),
                  ],
                ),
                const Image(image: AssetImage('assets/images/Group_26.png'),),
              ],
            ),
            Container(
                margin: EdgeInsets.only(right: width*0.62,),
                child: Text("S'inscrire",style: TextStyle(color: const Color(0XFF444251),fontWeight: FontWeight.bold,fontSize: text*20,),)),
            SizedBox(
              height: height*0.010,
            ),
            Container(
              margin: EdgeInsets.only(right: width*0.34),
              child: Text("Entrez vos différentes coordonnées.",style: TextStyle(color: const Color(0XFF959BA4),fontSize: text*12,),),),
            Row(
              children: [
                Container(
                  margin:
                  EdgeInsets.only(top:height*0.040,left: width*0.075,right: width*0.065,bottom: height*0.020),
                  height: height*0.070,
                  width: width*0.85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(width*0.040),),
                    border: Border.all(color: const Color(0XFFD7D9DB),width: 2),
                  ),
                  child: Row(
                    children: [
                      Padding(padding: EdgeInsets.all(MediaQuery.of(context).size.width/50),),
                      const Icon(Icons.person_outline),
                      const VerticalDivider(
                        thickness: 2,
                        indent: 5,
                        endIndent: 5,
                      ),
                      Column(
                        children: [
                          const SizedBox(
                            height: 3,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: width*0.010,right: width*0.05),
                            child: Text("Nom, Prenom",style: TextStyle(color: Color(0XFF959BA4),fontSize: text*11,),),
                          ),
                          SizedBox(
                            height: height*0.010,
                          ),
                           Text("Dwayne Johnson",style: TextStyle(color: const Color(0XFF444251),fontSize: text*11,),),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin:
                  EdgeInsets.only(top:height*0.010,left: width*0.075,right: width*0.065,bottom: height*0.020),
                  height: height*0.070,
                  width: width*0.85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(width*0.040),),
                    border: Border.all(color: const Color(0XFFD7D9DB),width: 2),
                  ),
                  child: Row(
                    children: [
                      Padding(padding: EdgeInsets.all(MediaQuery.of(context).size.width/50),),
                      const Icon(Icons.mail_outlined),
                      const VerticalDivider(
                        thickness: 2,
                        indent: 5,
                        endIndent: 5,
                      ),
                      Column(
                        children: [
                          const SizedBox(
                            height: 3,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: width*0.010,right: width*0.6),
                            child: Text("Email",style: TextStyle(color: Color(0XFF959BA4),fontSize: text*11),),
                          ),
                          SizedBox(
                            height: height*0.010,
                          ),
                           Padding(
                             padding: EdgeInsets.only(right: width*0.3),
                             child: Text("dwaynejohnson@gmail.com",style: TextStyle(color: Color(0XFF444251),fontSize: text*11),),
                           ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin:
                  EdgeInsets.only(top:height*0.010,left: width*0.075,right: width*0.065,),
                  height: height*0.070,
                  width: width*0.85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(width*0.040),),
                    border: Border.all(color: const Color(0XFFD7D9DB),width: 2),
                  ),
                  child: Row(
                    children: [
                      Padding(padding: EdgeInsets.all(width/50)),
                      const Icon(Icons.lock_open_outlined),
                      const VerticalDivider(
                        thickness: 2,
                        indent: 5,
                        endIndent: 5,
                      ),
                      Column(
                        children: [
                          const  SizedBox(
                            height: 3,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: height*0.005,right: width*0.30),
                            child:Text("Mot de passe",style: TextStyle(color: Color(0XFF959BA4),fontSize: text*11),),
                          ),
                          const  SizedBox(
                            height: 5,
                          ),
                          Container(
                            margin: EdgeInsets.only(right: width*0.20),
                            child: Row(

                              children: const[

                                Icon(Icons.circle,size: 12,),
                                Icon(Icons.circle,size: 12,),
                                Icon(Icons.circle,size: 12,),
                                Icon(Icons.circle,size: 12,),
                                Icon(Icons.circle,size: 12,),
                                Icon(Icons.circle,size: 12,),
                                Icon(Icons.circle,size: 12,),
                                Icon(Icons.circle,size: 12,),
                                Icon(Icons.circle,size: 12,),
                              ],
                            ),
                          ),

                        ],
                      ),
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: width*0.070),),
                          const Icon(Icons.visibility_off,color: Color(0XFF959BA4),),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),

            Container(
              margin: EdgeInsets.only(top: height*0.040,bottom: height*0.030,right: height*0.030,left: height*0.030),
              height: height*0.070,
              width: width*90,
              decoration:  BoxDecoration(
                color: const Color(0XFFFF4800),
                borderRadius: BorderRadius.all(Radius.circular(width*0.080),),
                boxShadow: const [BoxShadow(
                  color: Color(0XFFFF4800),
                  blurRadius: 30,
                  spreadRadius: -10,
                  offset: Offset(0, 12),
                ),],
              ),
              child: FloatingActionButton(
              elevation: 0,
              splashColor: Color(0XFFFF4800),
              backgroundColor: Color(0XFFFF4800),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ThirdScreen(),),);
              },child: Center(child: Text("S'inscrire",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: text*20),),),
            ),),
            SizedBox(height: height*0.010,),
            RichText(text: TextSpan(text: "Vous avez déjà un compte ?",style: TextStyle(color: const Color(0XFF444251),fontSize: text*11,),
              children: [
                TextSpan(text: "    S'inscrire",style: TextStyle(color: const Color(0XFFFF4800),fontSize: text*11,),),
              ],),),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const[
                  Image(image: AssetImage("assets/images/Group_17.png"),),
                  Image(image: AssetImage("assets/images/Group_11.png"),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
