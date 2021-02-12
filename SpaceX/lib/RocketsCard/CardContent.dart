import 'package:SpaceX/InfoBlock/InfoBlockTitle.dart';
import 'package:SpaceX/Models/Spaceship.dart';
import 'package:flutter/material.dart';

class CardContent extends StatelessWidget {
  final Spaceship spaceship;
  final bool isRocketTab;
  CardContent(this.spaceship, this.isRocketTab);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          blurRadius: 4,
          offset: Offset(0, 3.5),
        )
      ]),
      height: 120,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 20, right: 50),
            child: Image(image: AssetImage(this.spaceship.logoFile)),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InfoBlockTitle("LAUNCH"),
                  Text(
                    this.spaceship.name,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  this.isRocketTab == false
                      ? Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                          Text(
                            this.spaceship.launchSite,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey.shade700,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top:15),
                            child: Text(
                              this.spaceship.launchDate.day.toString() +
                                  '-' +
                                  this.spaceship.launchDate.month.toString() +
                                  "-" +
                                  this.spaceship.launchDate.year.toString(),
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey.shade700,
                              ),
                            ),
                          )
                        ]))
                      : Container(
                          width: 70,
                          decoration: BoxDecoration(
                              color: this.spaceship.isActive
                                  ? Colors.green
                                  : Colors.red,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          margin: EdgeInsets.only(bottom: 10),
                          padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                          child: Center(
                            child: Text(
                              this.spaceship.isActive ? "ACTIVE" : "INACTIVE",
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
