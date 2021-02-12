import 'package:flutter/material.dart';

class InfoBlockBody extends StatelessWidget {
  final String body;
  final Color bodyColor;
  InfoBlockBody(this.body,this.bodyColor);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        
      ),
        
        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Container(
          child: Text(
            this.body,
            style: TextStyle(
                fontSize: 17, color: this.bodyColor),
          ),
        ),
      );
  }
}