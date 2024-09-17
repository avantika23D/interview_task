import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signin_task/screens/signin.dart';

class MailVerification extends StatelessWidget {
  const MailVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Verification mail send, Please verify.'),
              SizedBox(height: 10,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () => Get.to(() => const SignInClass()), child: Text('Back to Login'),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
