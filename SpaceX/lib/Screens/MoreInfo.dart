import 'package:SpaceX/InfoBlock/InfoBlock.dart';
import 'package:SpaceX/InfoBlock/InfoBlockTitle.dart';
import 'package:SpaceX/Spaceship.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
            InfoBlock("ROCKET", this.spaceship.name, "light"),
            InfoBlock(
                "LAUNCH DATE",
                DateFormat('dd-MM-yyy').format(this.spaceship.launchDate),
                "light"),
            InfoBlock("LAUNCH SITE", this.spaceship.launchSite, "light"),
            InfoBlock(
                "LAUNCH STATUS",
                this.spaceship.isLaunchSuccess == true ? "Success" : "Failure",
                "light"),
            InfoBlock(
                "DETAILS",
                this.spaceship.details != null ? this.spaceship.details : "",
                "light"),
            InfoBlock(
                "ROCKET SUMMARY",
                this.spaceship.rocketSummary != null
                    ? this.spaceship.rocketSummary
                    : "",
                "light"),
            InfoBlock(
                "TYPE",
                this.spaceship.type != null ? this.spaceship.type : "",
                "light"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InfoBlock(
                    "FIRST STAGE",
                    this.spaceship.firstStage != null
                        ? this.spaceship.firstStage
                        : "",
                    "light"),
                InfoBlock(
                    "SECOND STAGE",
                    this.spaceship.secondState != null
                        ? this.spaceship.secondState
                        : "",
                    "light"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InfoBlockTitle("YOUTUBE"),
                    Container(
                      child: Icon(
                        FontAwesomeIcons.youtube,
                        color: Colors.red,
                        size: 50,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    InfoBlockTitle("Reddit"),
                    Container(
                      child: FaIcon(
                        FontAwesomeIcons.reddit,
                        color: Colors.orange,
                        size: 50,
                      ),
                    )
                  ],
                )
              ],
            ),
            this.spaceship.morePics.length>0?(
            Container(
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(color: Colors.black),
                height: 300,
                child: ListView(scrollDirection: Axis.horizontal, children: 
                this.spaceship.morePics.map((fileName){
                  return Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      margin: EdgeInsets.only(right: 20),
                      width: 250,
                      child: Image(
                        image: AssetImage(fileName),
                        fit: BoxFit.fill,
                      ));}
                ).toList())
            )):Container()
          ],
        ),
      ),
    );
  }
}
