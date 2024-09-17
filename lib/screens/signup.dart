import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signin_task/controller/signup_controller.dart';
import 'package:signin_task/model/user_model.dart';

import 'mail_verification.dart';

class SignUpClass extends StatelessWidget {
  const SignUpClass({super.key});

  @override
  Widget build(BuildContext context) {

    //to call controller
    final controller = Get.put(SignupController());

    return Scaffold(
      appBar: AppBar(
        title: Text('Create Account', style: Theme.of(context).textTheme.headlineMedium,),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            child: Form(
              key: controller.signupFormKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: controller.fullName,
                    decoration: const InputDecoration(
                      hintText: 'Full name',
                      labelText: 'Full name',
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  TextFormField(
                    controller: controller.phoneNumber,
                    decoration: const InputDecoration(
                      hintText: 'Phone number',
                      labelText: 'Phone number',
                      prefixIcon: Icon(Icons.phone),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  TextFormField(
                    controller: controller.email,
                    decoration: const InputDecoration(
                      hintText: 'E-mail',
                      labelText: 'E-mail',
                      prefixIcon: Icon(Icons.email),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  TextFormField(
                    controller: controller.password,
                    decoration:const InputDecoration(
                      hintText: 'Password',
                      labelText: 'Password',
                      prefixIcon: Icon(Icons.key),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  TextFormField(
                    decoration:const InputDecoration(
                      hintText: 'Confirm Password',
                      labelText: 'Confirm Password',
                      prefixIcon: Icon(Icons.key),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          SignupController.instance.registerUser(controller.email.text.trim(), controller.password.text.trim());
                          final user = UserModel(
                              fullName: controller.fullName.text.trim(),
                              password: controller.password.text.trim(),
                              email: controller.email.text.trim(),
                              phoneNumber: controller.phoneNumber.text.trim()
                          );
                          SignupController.instance.createUser(user);
                          Get.to(() => const MailVerification());
                        },
                        child: const Text("Sign Up")
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
