import 'package:anvaysoft/AppDetails/appdetailscontroller.dart';
import 'package:anvaysoft/CustomPackages/widgets.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher_string.dart';

class AppDetails extends StatelessWidget {
  AppDetails({
    super.key,
    required this.assetPath,
    required this.appName,
    required this.appVersion,
    required this.appBarColor,
    required this.bodyColor,
    required this.appDescription,
    required this.googleplaylink,
    required this.appstorelink
  });

  String assetPath;
  String appName;
  String appVersion;
  Color? appBarColor;
  Color? bodyColor;
  String appDescription;
  String googleplaylink;
  String appstorelink;

  @override
  Widget build(BuildContext context) {

    var controller = Get.put(AppDetailsController());

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Widgets.logo(),
          Widgets.divider(),
          Expanded(
            child: Widgets.screen([
              Widgets.imageCardBorder(assetPath, appName, appVersion),
              Widgets.paddingHeightTen(),
              Widgets.paddingHeightTen(),
              Widgets.devices(assetPath, appName, Scaffold(
                appBar: AppBar(
                  automaticallyImplyLeading: false,
                  title: Text(appName, style: TextStyle(color: Colors.white)),
                  backgroundColor: appBarColor,
                ),
                body: Container(
                  width: double.infinity,
                  color: bodyColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(child: Padding(
                        padding: const EdgeInsets.all(50),
                        child: Image.asset(assetPath),
                      ))
                    ]
                  )
                )
              )),
              Widgets.paddingHeightTen(),
              Widgets.paddingHeightTen(),
              Widgets.titleBarWithWidget(
                  Icons.download,
                  "Download",
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: (){
                            launchUrlString(googleplaylink);
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.white)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(Icons.android),
                                Widgets.paddingWidth(),
                                Text("Google Play"),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Widgets.paddingWidth(),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: (){
                            launchUrlString(appstorelink);
                          },
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.white)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(Icons.apple),
                                Widgets.paddingWidth(),
                                Text("App Store"),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  )
              ),
              Widgets.paddingHeightTen(),
              Widgets.titleBarWithWidget(
                Icons.description_outlined,
                "Description",
                Text(appDescription, style: TextStyle(color: Colors.black.withOpacity(0.75)),)
              ),
              Widgets.paddingHeightTen(),
              Widgets.titleBarWithWidget(
                  Icons.settings_applications_rounded,
                  "Requirements",
                SizedBox(
                    width: double.infinity,
                    child: Text("Android- Android 5.0 or later\niPhone- iOS 11.0 or later\niPad- iPadOS 11.0 or later\niPod touch- iOS 11.0 or later\nMac- macOS 11.0 or later",style: TextStyle(color: Colors.black.withOpacity(0.75)),)),
              ),
              Widgets.paddingHeightTen(),
              Widgets.mailCard(),
            ]),
          ),
        ],
      ),
    );
  }
}
