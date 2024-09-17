import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:signin_task/screens/welcome.dart';

class AuthenticationRepository extends GetxController {

  static AuthenticationRepository get instance => Get.find();

  final _auth = FirebaseAuth.instance;

  Future<UserCredential> registerWithEmailAndPassword(String email, String password) async{
    try {
      return await _auth.createUserWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      throw 'Something wrong to register';
    }
  }

  //login user
  Future<UserCredential> loginWithEmailAndPassword(String email, String password) async{
    try {
      return await _auth.signInWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      throw 'Something wrong to login';
    }
  }

  Future<void> sendEmailVerification() async {
    try {
      return await _auth.currentUser?.sendEmailVerification();
    } catch (e) {
      throw 'Something wrong to send mail';
    }
  }

}