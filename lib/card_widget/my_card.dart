import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final Color? CardColor;
  final String CardName;
  final String CardPrise;
  final String CardNumber;
  final String CardDay;

  const MyCard({
    Key? key, required this.CardColor, required this.CardName, required this.CardPrise, required this.CardNumber, required this.CardDay,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(right: 20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: CardColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 10,
          ),
          Text(
            CardName,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '\$'+ CardPrise,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                CardNumber,
                style: TextStyle(

                  color: Colors.white,
                ),
              ),
              Text(
                CardDay,
                style: TextStyle(

                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}