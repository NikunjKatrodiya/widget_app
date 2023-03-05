import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    double height=size.height;
    double width=size.width;
    double text=MediaQuery.textScaleFactorOf(context);
    return Scaffold(

      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,

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
                margin: EdgeInsets.only(right: width*0.28),
                child: Text("Mot de passe oublié",maxLines: 1,style: TextStyle(color: const Color(0XFF444251),fontWeight: FontWeight.bold,fontSize: text*20,),)),
            SizedBox(
              height: height*0.015,
            ),
            Container(
              margin: EdgeInsets.only(right: width*0.27),
              child: Text("Saisissez votre numéro de téléphone",maxLines: 1,style: TextStyle(color: const Color(0XFF959BA4),fontSize: text*12,),),),
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
                      const Icon(Icons.phone_android_rounded),
                      const VerticalDivider(
                        thickness: 2,
                        indent: 5,
                        endIndent: 5,
                      ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(height*0.10),
                          child: Image.asset("assets/images/Group_1.png"),
                        ),
                      Container(
                        margin: EdgeInsets.only(left: width*0.015),
                          child: Image.asset("assets/images/Path_1.png")),
                    ],
                  ),
                ),
              ],
            ),



            Container(
              margin: EdgeInsets.only(top: height*0.1,bottom: height*0.10,right: height*0.030,left: height*0.030),
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
              child: Center(child: Text("Suivant",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: text*20),),),
            ),
            
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
