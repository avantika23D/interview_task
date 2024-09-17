import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signin_task/repo/authentication_repository.dart';
import 'package:signin_task/screens/welcome.dart';

class SigninController extends GetxController {

  static SigninController get instance => Get.find();

  final hidePassword = true.obs;
  final email = TextEditingController(); //binding this variables by assigning controller property to form's text fields
  final password = TextEditingController();

  GlobalKey<FormState> signinFormKey = GlobalKey<FormState>();

  void signIn() async {
    try{
      if(!signinFormKey.currentState!.validate()) return;
      AuthenticationRepository.instance.loginWithEmailAndPassword(email.text.trim(), password.text.trim());
      Get.to(WelcomeClass());
    } on FirebaseAuthException catch (e) {
      print(e);
    }
  }

  // void loginUser(String email, String password) async {
  //   try{
  //     final user = await AuthenticationRepository.instance.loginWithEmailAndPassword(email, password);
  //   } on FirebaseAuthException catch(e) {
  //     print("Login error $e");
  //   }
  // }
}