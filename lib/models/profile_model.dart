import 'package:hive/hive.dart';

part 'profile_model.g.dart';

@HiveType(typeId: 0)
class ProfileModel extends HiveObject {
  @HiveField(0)
  String name;
  @HiveField(1)
  String bio;
  @HiveField(2)
  String email;
  @HiveField(3)
  String phone;
  @HiveField(4)
  String location;

  ProfileModel({
    required this.name,
    required this.bio,
    required this.email,
    required this.phone,
    required this.location,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
    name: json['name'],
    bio: json['bio'],
    email: json['email'],
    phone: json['phone'],
    location: json['location'],
  );

  Map<String, dynamic> toJson() => {
    'name': name,
    'bio': bio,
    'email': email,
    'phone': phone,
    'location': location,
  };
}
