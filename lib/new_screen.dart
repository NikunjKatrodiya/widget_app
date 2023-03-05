import 'package:flutter/material.dart';
import 'package:widget_app/commn_wight/comman_button.dart';

class NewScreen extends StatefulWidget {
  const NewScreen({Key? key}) : super(key: key);

  @override
  State<NewScreen> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              CommanButton(
                onTap: () {},
                height: 100,
                isShadowFull: false,

                title: "Confirmer le paiement",
                // buttonColor: Color(0xFFFFFFFF),
                // shadowColor: Color(0x99D7D9DB),
                // textColor: Color(0xFF000000),
                // icon: Icon(Icons.arrow_forward),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
