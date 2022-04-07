import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constant.dart';

class ConstantPreview extends StatelessWidget {
  static List<String> colorName = [
    'BackgroundColor',
    'TitleTextColor',
    'BodyTextColor',
    'TextLightColor',
    'InfectedColor',
    'DeathColor',
    'Recovercolor',
    'PrimaryColor',
    'ShadowColor',
    'ActiveShadowColor',
  ];
  static List<Color> colorCode = [
    Color(0xFFFEFEFE),
    Color(0xFF303030),
    Color(0xFF4B4B4B),
    Color(0xFF959595),
    Color(0xFFFF8748),
    Color(0xFFFF4848),
    Color(0xFF36C12C),
    Color(0xFF3382CC),
    Color(0xFFB7B7B7).withOpacity(.16),
    Color(0xFF4056C6).withOpacity(.15),
  ];

  final List<ColorName> colorData = List.generate(
      colorName.length,
      (index) => ColorName(
            colorName[index],
            colorCode[index],
          ));

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
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            width: double.maxFinite,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 5),
                    blurRadius: 10,
                    color: ShadowColor,
                  )
                ]),
            child: Row(
              children: [
                Container(
                  width: 180,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15)),
                    color: colorData[index].color,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  colorData[index].name,
                  style: TitleTextstyle,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

class ColorName {
  final String name;
  final Color color;

  ColorName(this.name, this.color);
}
