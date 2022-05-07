import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:macbro/controller/main/main_controller.dart';
import 'package:macbro/ui/main/basket/basket_page.dart';
import 'package:macbro/ui/main/favourite/favourite_page.dart';
import 'package:macbro/ui/main/home/home_page.dart';
import 'package:macbro/ui/main/profile/profile_page.dart';

class MainPage extends GetView<MainController> {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
        builder: (controller) => Scaffold(
              body: IndexedStack(
                index: controller.bottomMenu.index,
                children: const [
                  HomePage(),
                  Basket(),
                  Favourite(),
                  Profile(),
                ],
              ),
              bottomNavigationBar: BottomNavigationBar(
                onTap: (pos) => controller.setMenu(BottomMenu.values[pos]),
                currentIndex: controller.bottomMenu.index,
                type: BottomNavigationBarType.fixed,
                backgroundColor: Colors.white,
                selectedLabelStyle: const TextStyle(
                  color: Colors.blue,
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                ),
                unselectedLabelStyle: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                ),
                elevation: 8,
                items: [
                  _bottomNavigationBarItem(
                    icon: 'home',
                    label: 'Home',
                    activeIcon: 'home_active',
                  ),
                  _bottomNavigationBarItem(
                    icon: 'basket',
                    label: 'Basket',
                    activeIcon: 'basket_active',
                  ),
                  _bottomNavigationBarItem(
                    icon: 'favourite',
                    label: 'Favourite',
                    activeIcon: 'favourite_active',
                  ),
                  _bottomNavigationBarItem(
                    icon: 'user',
                    label: 'Profile',
                    activeIcon: 'user_active',
                  ),
                ],
              ),
            ));
  }

  _bottomNavigationBarItem({
    required String activeIcon,
    required String icon,
    required String label,
  }) {
    return BottomNavigationBarItem(
      icon: Padding(
          padding: const EdgeInsets.only(bottom: 4),
          child: SvgPicture.asset('assets/svg/$icon.svg')),
      activeIcon: Padding(
          padding: const EdgeInsets.only(bottom: 4),
          child: SvgPicture.asset('assets/svg/$activeIcon.svg')),
      label: label,
    );
  }
}
