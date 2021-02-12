import 'package:SpaceX/InfoBlock.dart';
import 'package:SpaceX/Spaceship.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MoreInfo extends StatelessWidget {
  final Spaceship spaceship;
  MoreInfo(this.spaceship);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              Icons.share,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(45, 0, 45, 0),
        decoration: BoxDecoration(color: Colors.black),
        child: ListView(
          children: [
            Container(
              child: Center(
                child: Image(image: AssetImage(this.spaceship.logoFile)),
              ),
            ),
            InfoBlock("ROCKET", this.spaceship.name),
            InfoBlock("LAUNCH DATE",
                DateFormat('dd-MM-yyy').format(this.spaceship.launchDate)),
            InfoBlock("LAUNCH SITE", this.spaceship.launchSite),
            InfoBlock("LAUNCH STATUS",
                this.spaceship.isLaunchSuccess == true ? "Success" : "Failure"),
            InfoBlock("DETAILS",
                this.spaceship.details != null ? this.spaceship.details : ""),
            InfoBlock(
                "ROCKET SUMMARY",
                this.spaceship.rocketSummary != null
                    ? this.spaceship.rocketSummary
                    : ""),
            InfoBlock(
                "TYPE", this.spaceship.type != null ? this.spaceship.type : ""),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InfoBlock("FIRST STAGE",
                    this.spaceship.firstStage != null ? this.spaceship.firstStage : ""),
                InfoBlock("SECOND STAGE",
                    this.spaceship.secondState != null ? this.spaceship.secondState : ""),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InfoBlock("YOUTUBE",
                    this.spaceship.firstStage != null ? this.spaceship.firstStage : ""),
                InfoBlock("REDDIT",
                    this.spaceship.secondState != null ? this.spaceship.secondState : ""),
              ],
              
            ),
            Icon(Icons.youtube_searched_for)
          ],
        ),
      ),
    );
  }
}
