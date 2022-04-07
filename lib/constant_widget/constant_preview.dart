import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constant.dart';

class ConstantPreview extends StatelessWidget {

  final List colorName = [
  BackgroundColor,
  TitleTextColor,
  BodyTextColor,
  TextLightColor,
  InfectedColor,
  DeathColor,
  Recovercolor,
  PrimaryColor,
  ShadowColor,
  ActiveShadowColor,
  ];

  ConstantPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Constant Preview Widget'),
      ),
      body: ListView.builder(
        itemCount: colorName.length,
        itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          width: double.maxFinite,
          padding: EdgeInsets.all(20),
          color: Colors.white,
          child: Row(
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: colorName[index],
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0,5),
                        blurRadius: 10,
                        color: ShadowColor,
                      )
                    ]
                ),
              ),
              SizedBox(width: 20,),
              Text('$colorName', style: TitleTextstyle,)
            ],
          ),
        );
        },
      ),

    );
  }
}
