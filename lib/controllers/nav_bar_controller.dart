import 'package:get/get.dart';
import 'package:learning/views/pages/dashboaard.dart';
import 'package:learning/views/pages/fourthpage.dart';
import 'package:learning/views/pages/secondpage.dart';
import 'package:learning/views/pages/thirdpage.dart';

class NavBarController extends GetxController {
  int selectedIndex = 0;

  changePage(index) {
    switch (index) {
      case 0:
        return const Dashboard();
      case 1:
        return const SecondPage();
      case 2:
        return const ThirdPage();
      case 3:
        return const FourthPage();
    }
  }

  changeIndex(index) {
    selectedIndex = index;
    update();
  }
}
