import 'package:SpaceX/InfoBlock/InfoBlockBody.dart';
import 'package:SpaceX/InfoBlock/InfoBlockTitle.dart';
import 'package:flutter/material.dart';

//Component for information with title and text content
class InfoBlock extends StatelessWidget {
  final String title;
  final String body;
  final String bodyColor;
  InfoBlock(this.title,this.body,this.bodyColor);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InfoBlockTitle(this.title),
        InfoBlockBody(this.body,this.bodyColor=="light"?Colors.white:Colors.black)
      ],
    );
  }
}