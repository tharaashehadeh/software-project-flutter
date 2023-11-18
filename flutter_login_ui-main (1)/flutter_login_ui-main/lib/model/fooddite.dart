class fooddite {
  String? id;
  String? eatingPeriod;
  String? time;
  String? numberOfDay;

  fooddite({this.id, this.eatingPeriod, this.time, this.numberOfDay});

  fooddite.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    eatingPeriod = json['eating period'];
    time = json['time'];
    numberOfDay = json['number of day'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['eating period'] = this.eatingPeriod;
    data['time'] = this.time;
    data['number of day'] = this.numberOfDay;
    return data;
  }
}