import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signin_task/repo/authentication_repository.dart';
import 'package:signin_task/screens/mail_verification.dart';
import 'package:signin_task/screens/welcome.dart';

import '../model/user_model.dart';
import '../repo/user_repositary.dart';

class SignupController extends GetxController {

  //to directly call controller object
  static SignupController get instance => Get.find();

  final fullName = TextEditingController();
  final email = TextEditingController();
  final phoneNumber = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  final userRepo = Get.put(UserRepositary());

  void registerUser(String email, String password) async {
    try{
      await AuthenticationRepository.instance.registerWithEmailAndPassword(email, password);
    } on FirebaseAuthException catch(e) {
      print("Registration error $e");
    }
  }

  Future<void> createUser(UserModel user) async {
    await userRepo.createUser(user);
  }
}