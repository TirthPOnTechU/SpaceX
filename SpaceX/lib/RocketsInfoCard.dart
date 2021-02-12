import 'package:SpaceX/Spaceship.dart';
import 'package:flutter/material.dart';

class RocketsInfoCard extends StatelessWidget {
  final Spaceship spaceship;
  RocketsInfoCard(this.spaceship);
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
              decoration: BoxDecoration(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom:10),
                    child: Text(
                      "LAUNCH",
                      style: TextStyle(
                          fontSize: 10,
                          color: Colors.red,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom:10),
                    child: Text(
                      this.spaceship.name,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                          ),
                    ),
                  ),
                  Container(
                    width: 70,
                    decoration: BoxDecoration(
                      color: this.spaceship.isActive?Colors.green:Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    margin: EdgeInsets.only(bottom:10),
                    padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child: Center(
                      child: Text(
                        this.spaceship.isActive?"ACTIVE":"INACTIVE",
                        style: TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                            ),
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