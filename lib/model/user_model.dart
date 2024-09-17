import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {

  final String? id;
  final String fullName;
  final String password;
  final String email;
  final String phoneNumber;

  UserModel({
    this.id,
    required this.fullName,
    required this.password,
    required this.email,
    required this.phoneNumber
  });

  ///convert model to JSON for soring data in firebase
  Map<String, dynamic> toJson() {
    return {
      'FullName' : fullName,
      'Email' : email,
      'PhoneNumber' : phoneNumber,
      'Password' : password,
    };
  }
}