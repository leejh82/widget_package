import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constant.dart';

class ConstantPreview extends StatefulWidget {
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


  ConstantPreview({Key? key}) : super(key: key);

  @override
  State<ConstantPreview> createState() => _ConstantPreviewState();
}

class _ConstantPreviewState extends State<ConstantPreview> {

  bool _isFavorited = true;

  final List<ColorName> colorData = List.generate(
      ConstantPreview.colorName.length,
      (index) => ColorName(
            ConstantPreview.colorName[index],
            ConstantPreview.colorCode[index],
          ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Constant Preview Widget'),
      ),
      body: ListView.builder(
        itemCount: ConstantPreview.colorName.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            width: double.maxFinite,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 2),
                    blurRadius: 2,
                    color: ShadowColor,
                  )
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 150,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        bottomLeft: Radius.circular(8)),
                    color: colorData[index].color,
                  ),
                ),

                Text(
                  colorData[index].name,
                  style: TitleTextstyle,
                ),
                IconButton(
                  onPressed: (){
                    setState(() {
                      if (_isFavorited) {
                        _isFavorited = false;
                      } else {
                        _isFavorited = true;
                      }
                    });

                  },
                  icon: (_isFavorited
                  ? Icon(Icons.favorite, color: Colors.red,)
                  : Icon(Icons.favorite_border,color: Colors.grey,)
                  )
                ),
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
