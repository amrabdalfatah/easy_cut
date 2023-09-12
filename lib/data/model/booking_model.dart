class BookingModel {
  String? id;
  String? userName;
  String? userEmail;
  String? userPhone;
  String? userImage;
  String? userAddress;
  String? approve;
  String? day;
  String? startTime;
  String? totalTime;
  String? chair;
  String? total;

  BookingModel({
    this.id,
    this.userName,
    this.userEmail,
    this.userPhone,
    this.userImage,
    this.userAddress,
    this.approve,
    this.day,
    this.startTime,
    this.totalTime,
    this.chair,
    this.total,
  });

  BookingModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userName = json['name'];
    userEmail = json['email'];
    userPhone = json['phone'];
    userImage = json['image'];
    userAddress = "${json['country']} - ${json['city']} - ${json['address']}";
    approve = json['approve'];
    day = json['day'];
    startTime = json['start_time'];
    totalTime = json['total_time'];
    chair = json['chair'];
    total = json['total'];
  }
}
