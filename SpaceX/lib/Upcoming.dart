import 'package:SpaceX/InfoBlock.dart';
import 'package:SpaceX/MainInfoCard.dart';
import 'package:SpaceX/MoreInfo.dart';
import 'package:SpaceX/Spaceship.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Upcoming extends StatelessWidget {
  final Spaceship upcomingLaunchShip;
  Upcoming(this.upcomingLaunchShip);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MoreInfo(this.upcomingLaunchShip),
              ),
            );
          },
          child: Container(
              decoration: BoxDecoration(),
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: MainInfoCard(this.upcomingLaunchShip))),
      Container(
        decoration: BoxDecoration(),
        margin: EdgeInsets.only(left: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InfoBlock(
                "LAUNCH DATE",
                DateFormat.E().format(this.upcomingLaunchShip.launchDate) +
                    " " +
                    DateFormat.MMMd()
                        .format(this.upcomingLaunchShip.launchDate) +
                    " " +
                    DateFormat.Hms()
                        .format(this.upcomingLaunchShip.launchDate) +
                    " " +
                    this.upcomingLaunchShip.launchDate.year.toString()),
            InfoBlock("LAUNCH SITE", this.upcomingLaunchShip.launchSite),
            InfoBlock("COUNT DOWN", "5 Hrs 30mins more...")
          ],
        ),
      )
    ]);
  }
}
