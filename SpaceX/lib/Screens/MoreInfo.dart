import 'package:SpaceX/InfoBlock/InfoBlock.dart';
import 'package:SpaceX/InfoBlock/InfoBlockTitle.dart';
import 'package:SpaceX/Models/Spaceship.dart';
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
            MoreInfoBlockWArapper("ROCKET", this.spaceship.name),
            MoreInfoBlockWArapper(
                "LAUNCH DATE",
                DateFormat('dd-MM-yyy').format(this.spaceship.launchDate),
                ),
            MoreInfoBlockWArapper("LAUNCH SITE", this.spaceship.launchSite),
            MoreInfoBlockWArapper(
                "LAUNCH STATUS",
                this.spaceship.isLaunchSuccess == true ? "Success" : "Failure",
                ),
            MoreInfoBlockWArapper(
                "DETAILS",
                this.spaceship.details != null ? this.spaceship.details : "",
                ),
            MoreInfoBlockWArapper(
                "ROCKET SUMMARY",
                this.spaceship.rocketSummary != null
                    ? this.spaceship.rocketSummary
                    : "",
                ),
            MoreInfoBlockWArapper(
                "TYPE",
                this.spaceship.type != null ? this.spaceship.type : "",
                ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MoreInfoBlockWArapper(
                    "FIRST STAGE",
                    this.spaceship.firstStage != null
                        ? this.spaceship.firstStage
                        : "",
                    ),
                MoreInfoBlockWArapper(
                    "SECOND STAGE",
                    this.spaceship.secondState != null
                        ? this.spaceship.secondState
                        : "",
                    ),
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
                decoration: BoxDecoration(color: Colors.black,),
                height: 300,
                child: ListView(scrollDirection: Axis.horizontal, children: 
                this.spaceship.morePics.map((fileName){
                  return Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
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

class MoreInfoBlockWArapper extends StatelessWidget {
  final String title;
  final String body;
  MoreInfoBlockWArapper(this.title,this.body);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom:20),
      child: InfoBlock(
        this.title,
        this.body,
        "light"
      ),
    );
  }
}