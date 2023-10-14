import 'package:ecitymart_app/const/consts.dart';
import 'package:ecitymart_app/controllers/home_controller.dart';
import 'package:ecitymart_app/views/cart_screen/cart_screen.dart';
import 'package:ecitymart_app/views/category_screen/category_screen.dart';
import 'package:ecitymart_app/views/homescreen/home_Screen.dart';
import 'package:ecitymart_app/views/profile_Screen/profile_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    //init home controller
    var controller = Get.put(HomeController());
   var navbarItem = [
    BottomNavigationBarItem(icon: Image.asset(icHome, width: 26,),label: home),
    BottomNavigationBarItem(icon: Image.asset(icCategories, width: 26,),label: categories),
    BottomNavigationBarItem(icon: Image.asset(icCart, width: 26,),label: cart),
    BottomNavigationBarItem(icon: Image.asset(icProfile, width: 26,),label: account),

   ];

   var navBody = [
    const HomeScreen(),
    const CategoryScreen(),
    const CartScreen(),
    const ProfileScreen()
   ];
    return Scaffold(
      body: Column(
        children: [
          Obx(()=>
             Expanded(
              child: navBody.elementAt(controller.currentNavIndex.value),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Obx(()=>
         BottomNavigationBar(
          currentIndex: controller.currentNavIndex.value,
          selectedItemColor: redColor,
          selectedLabelStyle: const TextStyle(
            fontFamily: semibold
          ),
          type: BottomNavigationBarType.fixed,
          backgroundColor: whiteColor,
          items: navbarItem,
          onTap: (value) {
            controller.currentNavIndex.value = value;
          },
          ),
      ),
    );
  }
}