import 'package:anvaysoft/AppsInfo/appsinfocontroller.dart';
import 'package:anvaysoft/CustomPackages/widgets.dart';
import 'package:anvaysoft/Tabs/News/newcontrollers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class AppsInfo extends StatelessWidget {
  AppsInfo({Key? key}) : super(key: key);

  var webviewController;


  @override
  Widget build(BuildContext context) {

    var controller = Get.put(AppsInfoController());

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Widgets.logo(),
          Widgets.divider(),
          Expanded(
            child: Widgets.screen([
              Widgets.cardBorder("Here is the app list of Anvaysoft's cross-platform apps; tap to open and explore their offerings."),
              Widgets.paddingHeightTen(),
              Widgets.titleBarWithWidget(
                Icons.dataset_outlined,
                "Apps Info",
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: AppsInfoController.map.length,
                  itemBuilder: (context, index){
                    return Container(
                      margin: index == AppsInfoController.map.length-1
                          ?const EdgeInsets.fromLTRB(0, 10, 0, 0)
                          : index == 0
                        ? const EdgeInsets.fromLTRB(0, 0, 0, 0)
                        :const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Widgets.imageCard(
                          "assets/images/"+AppsInfoController.map[index]["icon"],
                          AppsInfoController.map[index]["appname"],
                          AppsInfoController.map[index]["appversion"],
                          "www.anvaysoft.com/"+AppsInfoController.map[index]["appname"].replaceAll(" ", "").replaceAll("#", "sharp").toLowerCase()
                      ),
                    );
                  }
                ),
              ),
              Widgets.paddingHeightTen(),
              Widgets.cardBorder("After clicking on any app, you can access its features, system requirements, and download buttons, allowing you to learn more about the app's capabilities, ensure compatibility with your device, and proceed with downloading as needed.")
            ]),
          ),
        ],
      ),
    );
  }
}
