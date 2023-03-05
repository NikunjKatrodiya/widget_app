import 'package:flutter/material.dart';

import 'second_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    double height=size.height;
    double width=size.width;
    double text=MediaQuery.textScaleFactorOf(context);
    return Scaffold(
      
      body: SafeArea(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,

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
                margin: EdgeInsets.only(right: width*0.62),
                child: Text("Connexion",style: TextStyle(color: const Color(0XFF444251),fontWeight: FontWeight.bold,fontSize: text*20,),)),
            SizedBox(
              height: height*0.015,
            ),
            Container(
                margin: EdgeInsets.only(right: width*0.12),
                child: Text("Saisissez votre adresse mail et votre mot de passe.",style: TextStyle(color: const Color(0XFF959BA4),fontSize: text*12,),),),
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
                               padding: EdgeInsets.only(top: width*0.010,right: width*0.4),
                               child:  Text("Email",style: TextStyle(color: const Color(0XFF959BA4),fontSize: text*11),),
                             ),
                             SizedBox(
                               height: height*0.010,
                             ),
                             const Text("dwaynejohnson@gmail.com",style: TextStyle(color: Color(0XFF444251),),),
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
                            child: Text("Mot de passe",style: TextStyle(color: const Color(0XFF959BA4),fontSize: text*11),),
                          ),
                          SizedBox(
                          height: height*0.010,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Container(
                  margin:  EdgeInsets.only(left:width/25),
                    child: const Icon(Icons.toggle_on,color: Color(0XFFFCC342),size: 60,),),
                Container(
                    margin: EdgeInsets.only(right: width*0.040),
                    child: Text("Se souvenir de moi",style: TextStyle(color: const Color(0XFF444251),fontSize: text*11,),),),
                Container(
                    margin: EdgeInsets.only(right: width*0.090),
                    child:  Text("Mot de passe oublié ?",style: TextStyle(color: const Color(0XFF444251),fontSize: text*11,),),),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: height*0.015,bottom: height*0.030,right: height*0.030,left: height*0.030),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen(),),);
              },child: Center(child: Text("Connexion",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: text*20),),),)//Center(child: Text("Connexion",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: text*20),),),
            ),
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
