import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signin_task/controller/signin_controller.dart';
import 'package:signin_task/controller/signup_controller.dart';
import 'package:signin_task/screens/signup.dart';

class SignInClass extends StatelessWidget {
  const SignInClass({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(SigninController());

    return Scaffold(
      appBar: AppBar(
        title: Text('Sign-In', style: Theme.of(context).textTheme.headlineMedium,),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            child: Form(
              key: controller.signinFormKey,
                child: Column(
                  children: [
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
                    SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(onPressed: () => controller.signIn(),  child: const Text("Sign-In")),
                    ),
                    const SizedBox(height: 10,),
                    const Text('OR'),
                    const SizedBox(height: 10,),
                    SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(onPressed: () => Get.to(() => const SignUpClass()), child: Text('Sign Up'),),
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
