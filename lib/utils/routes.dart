import 'package:get/get.dart';
import 'package:learning/views/auth/loginpage.dart';
import 'package:learning/views/auth/registerpage.dart';

import '../views/homepage.dart';
import '../views/splashpage.dart';

var routes = [
  GetPage(
    name: '/homepage',
    page: () => const HomePage(),
    transition: Transition.cupertino,
    transitionDuration: const Duration(
      milliseconds: 500,
    ),
  ),
  GetPage(
    name: '/splash',
    page: () => const SplashPage(),
    transition: Transition.cupertino,
    transitionDuration: const Duration(
      milliseconds: 500,
    ),
  ),
  GetPage(
    name: '/login',
    page: () => const UserLogin(),
    transition: Transition.cupertino,
    transitionDuration: const Duration(
      milliseconds: 500,
    ),
  ),
  GetPage(
    name: '/register',
    page: () => const UserRegister(),
    transition: Transition.cupertino,
    transitionDuration: const Duration(
      milliseconds: 500,
    ),
  )
];
