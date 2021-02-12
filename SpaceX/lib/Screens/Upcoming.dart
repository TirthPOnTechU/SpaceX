import 'package:SpaceX/InfoBlock/InfoBlock.dart';
import 'package:SpaceX/RocketsCard/CardContent.dart';
import 'package:SpaceX/RocketsCard/CardWrapper.dart';
import 'package:SpaceX/Screens/MoreInfo.dart';
import 'package:SpaceX/Models/Spaceship.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Upcoming extends StatelessWidget {
  final Spaceship upcomingLaunchShip;
  Upcoming(this.upcomingLaunchShip);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          RocketCard(this.upcomingLaunchShip,false),
          Container(
            decoration: BoxDecoration(),
            margin: EdgeInsets.only(left: 30, top: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  child: InfoBlock(
                      "LAUNCH DATE",
                      DateFormat.E()
                              .format(this.upcomingLaunchShip.launchDate) +
                          " " +
                          DateFormat.MMMd()
                              .format(this.upcomingLaunchShip.launchDate) +
                          " " +
                          DateFormat.Hms()
                              .format(this.upcomingLaunchShip.launchDate) +
                          " " +
                          this.upcomingLaunchShip.launchDate.year.toString(),
                      "dark"),
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 15),
                    child: InfoBlock("LAUNCH SITE",
                        this.upcomingLaunchShip.launchSite, "dark")),
                InfoBlock("COUNT DOWN", "5 Hrs 30mins more...", "dark")
              ],
            ),
          )
        ]);
  }
}
