import 'package:anvaysoft/Anvaysoft/anvaysoftcontroller.dart';
import 'package:anvaysoft/CustomPackages/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnvaySoft extends StatelessWidget {
  const AnvaySoft({super.key});

  @override
  Widget build(BuildContext context) {

    var controller = Get.put(AnvaySoftController());

    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (context, constraints){
          return Container(
            color: Colors.white,
            width: Get.width,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/logo.png", height:40, width: 120,),
                ),
                Widgets.divider(),
                Expanded(
                    child: Obx(()=>controller.pages[controller.selectedIndex.value])
                ),
                Widgets.divider()
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: Obx(()=>
        BottomNavigationBar(
          backgroundColor: Colors.white,
          elevation: 0,
          landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
          items: [
            BottomNavigationBarItem(
              icon: Obx(()=> Icon(controller.selectedIndex.value==0?Icons.home:Icons.home_outlined)),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Obx(()=> Icon(controller.selectedIndex.value==1?Icons.message:Icons.message_outlined)),
              label: 'News',
            ),
            BottomNavigationBarItem(
              icon: Obx(()=> Icon(controller.selectedIndex.value==2?Icons.info:Icons.info_outline)),
              label: 'About',
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: controller.selectedIndex.value,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black.withOpacity(0.5),
          onTap: controller.onItemTapped,
        ),
      ),
    );
  }
}
