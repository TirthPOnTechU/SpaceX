import 'package:SpaceX/RocketsCard/CardContent.dart';
import 'package:SpaceX/Screens/MoreInfo.dart';
import 'package:SpaceX/Spaceship.dart';
import 'package:flutter/material.dart';

class RocketCard extends StatelessWidget {
  final Spaceship spaceship;
  RocketCard(this.spaceship);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MoreInfo(this.spaceship,
              ),
            ));
          },
          child: Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: CardContent(this.spaceship)));
  }
}