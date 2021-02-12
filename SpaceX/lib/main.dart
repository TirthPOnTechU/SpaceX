import 'package:SpaceX/Screens/Rockets.dart';
import 'package:SpaceX/Screens/Upcoming.dart';
import 'package:flutter/material.dart';
import 'Spaceship.dart';
import 'Screens/Launches.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'SpaceX'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var spaceShips = [
    new Spaceship(
        "Starlink 2",
        "CCAES SLC 40",
        new DateTime.now(),
        false,
        'assets/crs.png',
        false,
        "Last launch of the original Falcon 9 v1.0 launch vehicle",
        "Falcon 9",
        "v1.0",
        "Cores: 4",
        "Payloads: 150kg",
        ["assets/rocket.jpeg", "assets/rocket.jpeg", "assets/rocket.jpeg"]),
    new Spaceship(
        "Starlink 2",
        "CCAES SLC 40",
        new DateTime.now(),
        false,
        'assets/crs.png',
        false,
        "Last launch of the original Falcon 9 v1.0 launch vehicle",
        "Falcon 9",
        "v1.0",
        "Cores: 4",
        "Payloads: 150kg",
        ["assets/rocket.jpeg"]),
    new Spaceship(
        "Starlink 2",
        "CCAES SLC 40",
        new DateTime.now(),
        false,
        'assets/crs.png',
        false,
        "Last launch of the original Falcon 9 v1.0 launch vehicle",
        "Falcon 9",
        "v1.0",
        "Cores: 4",
        "Payloads: 150kg", []),
    new Spaceship(
        "Starlink 2",
        "CCAES SLC 40",
        new DateTime.now(),
        false,
        'assets/crs.png',
        false,
        "Last launch of the original Falcon 9 v1.0 launch vehicle",
        "Falcon 9",
        "v1.0",
        "Cores: 4",
        "Payloads: 150kg",
        ["assets/rocket.jpeg", "assets/rocket.jpeg"]),
    new Spaceship(
        "Starlink 2",
        "CCAES SLC 40",
        new DateTime.now(),
        false,
        'assets/crs.png',
        false,
        "Last launch of the original Falcon 9 v1.0 launch vehicle",
        "Falcon 9",
        "v1.0",
        "Cores: 4",
        "Payloads: 150kg", []),
    new Spaceship(
        "Starlink 2",
        "CCAES SLC 40",
        new DateTime.now(),
        false,
        'assets/crs.png',
        false,
        "Last launch of the original Falcon 9 v1.0 launch vehicle",
        "Falcon 9",
        "v1.0",
        "Cores: 4",
        "Payloads: 150kg", []),
  ];
  final tabs = [
    Tab(child: Text("Upcoming", style: TextStyle(color: Colors.grey))),
    Tab(child: Text("Launches", style: TextStyle(color: Colors.grey))),
    Tab(
        child: Text(
      "Rockets",
      style: TextStyle(color: Colors.grey),
    ))
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.black),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40)),
              color: Colors.white),
          margin: EdgeInsets.only(top: 50),
          padding: EdgeInsets.only(top: 20, right: 10, left: 10),
          child: DefaultTabController(
            initialIndex: 0,
            length: this.tabs.length,
            child: Column(
              children: [
                TabBar(
                  indicatorPadding: EdgeInsets.only(bottom: 7),
                  indicatorWeight: 4,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorColor: Colors.red,
                  tabs: this.tabs,
                ),
                Expanded(
                  child: TabBarView(children: [
                    Upcoming(this.spaceShips[0]),
                    Launches(this.spaceShips),
                    Rockets(this.spaceShips)
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
