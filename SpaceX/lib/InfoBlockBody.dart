import 'package:flutter/material.dart';

class InfoBlockBody extends StatelessWidget {
  final body;
  InfoBlockBody(this.body);
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
                fontSize: 17, color: Colors.blue),
          ),
        ),
      );
  }
}