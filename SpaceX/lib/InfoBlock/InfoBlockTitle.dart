import 'package:flutter/material.dart';

class InfoBlockTitle extends StatelessWidget {
  final title;
  InfoBlockTitle(this.title);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Container(
          child: Text(
            this.title,
            style: TextStyle(
                fontSize: 10, color: Colors.red, fontWeight: FontWeight.bold),
          ),
        ),
      );
  }
}