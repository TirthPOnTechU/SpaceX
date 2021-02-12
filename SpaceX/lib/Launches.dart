import 'package:SpaceX/MainInfoCard.dart';
import 'package:flutter/material.dart';

import 'MoreInfo.dart';

class Launches extends StatelessWidget {
  final launches;
  Launches(this.launches);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: this.launches.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MoreInfo(
                  launches[index]
                ),
              ),
            );
          },
          child: Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
              
              child: MainInfoCard(
                this.launches[index]
              )
          )
        );
      },
    );
  }
}
