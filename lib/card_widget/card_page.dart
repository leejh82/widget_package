import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'my_card.dart';

class CardWidgetPage extends StatelessWidget {
  const CardWidgetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'My',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        ' Card',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey[400],
                      ),
                      child: Icon(Icons.add)),
                ],
              ),
            ),
            Container(
              width: double.maxFinite,
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 20,),

              children: [
                MyCard(CardName: 'CardName 01', CardColor: Colors.purple[200],CardPrise: '1,234,567',CardDay: '12/08',CardNumber: '***-333-555-666',),
                MyCard(CardName: 'CardName 02', CardColor: Colors.redAccent[200],CardPrise: '1,234,567',CardDay: '12/08',CardNumber: '***-333-555-666',),
                MyCard(CardName: 'CardName 03', CardColor: Colors.yellow[200],CardPrise: '1,234,567',CardDay: '12/08',CardNumber: '***-333-555-666',),

              ],
            ),)
            ],
        ),
      ),
    );
  }
}


