import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'model.dart';
import 'list_detail.dart';

class ListViewWidget extends StatelessWidget {
  static List<String> animalName = [
    'Bear',
    'Camel',
    'Deer',
    'Fox',
    'Kangaroo',
    'Koala',
    'Lion',
    'Tiger'
  ];

  static List<String> animalImagePath = [
    'images/bear.png',
    'images/camel.png',
    'images/deer.png',
    'images/fox.png',
    'images/kangaroo.png',
    'images/koala.png',
    'images/lion.png',
    'images/tiger.png'
  ];

  static List<String> animalLocation = [
    'forest and mountain',
    'dessert',
    'forest',
    'snow mountain',
    'Australia',
    'Australia',
    'Africa',
    'Korea'
  ];

  final List<Animal> animalData = List.generate(
      animalLocation.length,
      (index) => Animal(
          animalName[index], animalImagePath[index], animalLocation[index]));

  ListViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('List View Widget'),
      ),
      body: ListView.builder(
        itemCount: animalData.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ListDetailPage(animal: animalData[index],)));
              },
              title: Text(animalData[index].name),
              leading: SizedBox(
                width: 50,
                height: 50,
                child: Image.asset(animalData[index].imgPath),
              ),
              contentPadding: EdgeInsets.all(10),
            ),
          );
        },
      ),
    );
  }
}


