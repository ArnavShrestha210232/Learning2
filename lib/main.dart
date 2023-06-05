import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning/controllers/state_controller.dart';
import 'package:learning/utils/routes.dart';

import 'controllers/nav_bar_controller.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(StateController());
  Get.put(NavBarController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      title: 'Learning',
      initialRoute: '/splash',
      getPages: routes,
    );
  }
}
