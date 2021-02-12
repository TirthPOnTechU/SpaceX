import 'package:SpaceX/MoreInfo.dart';
import 'package:SpaceX/RocketsInfoCard.dart';
import 'package:flutter/material.dart';

class Rockets extends StatelessWidget {
  final rockets;
  Rockets(this.rockets);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: this.rockets.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MoreInfo(
                  rockets[index]
                ),
              ),
            );
          },
          child: Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
              
              child: RocketsInfoCard(
                this.rockets[index],
              )
          )
        );
      },
    );
  }
}