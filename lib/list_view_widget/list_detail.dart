import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'model.dart';
import 'package:like_button/like_button.dart';

class ListDetailPage extends StatefulWidget {
  const ListDetailPage({Key? key, required this.animal}) : super(key: key);

  final Animal animal;

  @override
  State<ListDetailPage> createState() => _ListDetailPageState();
}

class _ListDetailPageState extends State<ListDetailPage> {

  bool isLiked = false;
  int LikeCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.animal.name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                width: 200,
                height: 200,
                child: Image.asset(widget.animal.imgPath)),
            SizedBox(height: 20,),
            Text('It lives in ' + widget.animal.location,style: TextStyle(
              fontSize: 18,
            ),),
            SizedBox(height: 20,),
            LikeButton(
              size: 30,
              isLiked: isLiked,
              likeCount: LikeCount,
            )
          ],
        ),
      ),
    );
  }
}
