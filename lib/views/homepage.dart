import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning/controllers/nav_bar_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavBarController>(builder: (data) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('HomePage'),
          elevation: 3,
        ),
        body: Center(
          child: data.changePage(data.selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.amber,
            unselectedItemColor: Colors.black,
            currentIndex: data.selectedIndex,
            onTap: (index) {
              data.changeIndex(index);
            },
            items: const [
              BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(Icons.abc_outlined),
              ),
              BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(Icons.ac_unit_sharp),
              ),
              BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(Icons.hdr_auto),
              ),
            ]),
      );
    });
  }
}
