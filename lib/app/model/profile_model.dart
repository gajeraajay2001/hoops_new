import 'package:cloud_firestore/cloud_firestore.dart';

class ProfileModel {
  String? aboutMe;
  String? city;
  String? dob;
  String? favPlayer;
  String? favTeam;
  String? height;
  String? name;
  String? playingStyle1;
  String? playingStyle2;
  String? playingStyle3;
  String? image;

  ProfileModel({
    required this.aboutMe,
    required this.city,
    required this.dob,
    required this.favPlayer,
    required this.favTeam,
    required this.name,
    required this.playingStyle1,
    required this.playingStyle2,
    required this.playingStyle3,
    required this.height,
    required this.image,
  });

  ProfileModel.fromMap({required Map<String, dynamic> data}) {
    aboutMe = data["aboutMe"];
    city = data["city"];
    favPlayer = data["favPlayer"];
    city = data["dob"];
    favTeam = data["favTeam"];
    playingStyle1 = data["playingStyle1"];
    playingStyle2 = data["playingStyle2"];
    playingStyle3 = data["playingStyle3"];
    height = data["height"];
    name = data["name"];
    image = data["image"];
  }
}
