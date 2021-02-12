class Spaceship {
  String name;
  String launchSite;
  DateTime launchDate;
  bool isActive;
  String logoFile;
  bool isLaunchSuccess;
  String details;
  String rocketSummary;
  String type;
  String firstStage;
  String secondState;
  List<String> morePics;
  Spaceship(this.name,this.launchSite,this.launchDate,this.isActive,this.logoFile,this.isLaunchSuccess, this.details,this.rocketSummary,this.type,this.firstStage,this.secondState,this.morePics);
  @override
  String toString() {
    return (this.name+" "+this.launchSite+" "+this.launchDate.toString());
  }
}