import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/custombutton.dart';
import '../widgets/customtextfeild.dart';

class UserLogin extends StatelessWidget {
  const UserLogin({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: const EdgeInsets.all(12),
          child: Form(
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                const CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.blueAccent,
                ),
                const SizedBox(
                  height: 12,
                ),
                CustomTextFeild(
                  controller: email,
                  keyboardType: TextInputType.emailAddress,
                  hintText: 'Email',
                  iconData: Icons.email,
                ),
                CustomTextFeild(
                  controller: password,
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.text,
                  obscure: true,
                  hintText: 'Password',
                  iconData: Icons.key,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forgot Pasword?',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                CustomButton(
                  text: 'Login',
                  onPressed: () {
                    Get.offAllNamed('/homepage');
                  },
                ),
                TextButton(
                  onPressed: () {
                    Get.toNamed('/register');
                  },
                  child: const Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
