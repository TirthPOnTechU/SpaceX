import 'package:SpaceX/InfoBlockBody.dart';
import 'package:SpaceX/InfoBlockTitle.dart';
import 'package:flutter/material.dart';

class InfoBlock extends StatelessWidget {
  final title;
  final body;
  InfoBlock(this.title,this.body);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InfoBlockTitle(this.title),
        InfoBlockBody(this.body)
      ],
    );
  }
}