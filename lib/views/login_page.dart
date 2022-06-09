import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:google_sign_in_getx/controllers/login_controller.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "images/app_logo.png",
            width: 100,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Google SignIn",
            style: TextStyle(fontSize: 40, color: Colors.white),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.only(left: 16, right: 16),
            child: ConstrainedBox(
              constraints: const BoxConstraints.tightFor(width: 1000),
              child: ElevatedButton(
                child: const Text(
                  "Sign In with Google",
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
                onPressed: () {
                  controller.login();
                },
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
