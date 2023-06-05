import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/custombutton.dart';
import '../widgets/customtextfeild.dart';

class UserRegister extends StatelessWidget {
  const UserRegister({super.key});

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
                  keyboardType: TextInputType.text,
                  hintText: 'Name',
                  iconData: Icons.person_2,
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
                CustomButton(
                  text: 'Register',
                  onPressed: () {},
                ),
                TextButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: const Text(
                    'Login',
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
