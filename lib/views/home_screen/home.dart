import 'package:e_commerce/controller/home_controller.dart';
import 'package:e_commerce/views/cart_screen/cart_screen.dart';
import 'package:e_commerce/views/category_screen/category_screen.dart';
import 'package:e_commerce/views/home_screen/home_screen.dart';
import 'package:e_commerce/views/profile_screen/profile_screen.dart';
import 'package:get/get.dart';
import '../../consts/consts.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    //inti home controller
    var controller = Get.put(HomeController());
    var navbarItem = [
      BottomNavigationBarItem(
          icon: Image.asset(
            icHome,
            width: 26,
          ),
          label: home),
      BottomNavigationBarItem(
          icon: Image.asset(
            icCategories,
            width: 26,
          ),
          label: categories),
      BottomNavigationBarItem(
          icon: Image.asset(
            icCart,
            width: 26,
          ),
          label: cart),
      BottomNavigationBarItem(
          icon: Image.asset(
            icProfile,
            width: 26,
          ),
          label: account),
    ];

    var navBody = [
      const HomeScreen(),
      const CategoryScreen(),
      const CartScreen(),
      const ProfileScreen(),
    ];

    return Scaffold(
      body: Column(
        children: [
          Obx(() => Expanded(
              child: navBody.elementAt(controller.currentNavIndex.value)))
        ],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          items: navbarItem,
          currentIndex: controller.currentNavIndex.value,
          selectedLabelStyle: const TextStyle(fontFamily: semibold),
          backgroundColor: Colors.white,
          selectedItemColor: redColor,
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            controller.currentNavIndex.value = value;
          },
        ),
      ),
    );
  }
}
