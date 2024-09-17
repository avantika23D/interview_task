import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../model/user_model.dart';

class UserRepositary extends GetxController {

  static UserRepositary get instance => Get.find();

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  createUser(UserModel user) async {
    await _firestore.collection("Users").add(user.toJson()).whenComplete(
        () => Get.snackbar(
            'Success',
            "UserAccount created",
            snackPosition: SnackPosition.BOTTOM
        )
    );
  }
}