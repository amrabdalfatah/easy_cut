class AppointmentModel {
  String? id;
  String? saturday;
  String? sunday;
  String? monday;
  String? tuesday;
  String? wednesday;
  String? thursday;
  String? friday;

  AppointmentModel({
    this.id,
    this.saturday,
    this.sunday,
    this.monday,
    this.tuesday,
    this.wednesday,
    this.thursday,
    this.friday,
  });

  AppointmentModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    saturday = json['saturday'];
    sunday = json['sunday'];
    monday = json['monday'];
    tuesday = json['tuesday'];
    wednesday = json['wednesday'];
    thursday = json['thursday'];
    friday = json['friday'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['saturday'] = this.saturday;
    data['sunday'] = this.sunday;
    data['monday'] = this.monday;
    data['tuesday'] = this.tuesday;
    data['wednesday'] = this.wednesday;
    data['thursday'] = this.thursday;
    data['friday'] = this.friday;
    return data;
  }
}
