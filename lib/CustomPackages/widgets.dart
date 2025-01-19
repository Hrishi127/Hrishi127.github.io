import 'package:device_frame/device_frame.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Widgets {

  static Widget divider() {
    return const Divider(height: 1, thickness: 1);
  }

  static Widget paddingHeight() {
    return SizedBox(height: 8);
  }

  static Widget paddingHeightTen() {
    return SizedBox(height: 10);
  }

  static Widget paddingWidth() {
    return SizedBox(width: 8);
  }

  static Widget card(String content) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        color: Colors.white,
        elevation: 5,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5)
        ),
        margin: EdgeInsets.all(0),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: SizedBox(
            width: Get.width,
            child: Text(content, style: TextStyle(
                fontSize: 14, color: Colors.black.withOpacity(0.75))),
          ),
        ),
      ),
    );
  }

  static Widget cardBorder(String content) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        color: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: BorderSide(color: Colors.black.withOpacity(0.1))
        ),
        margin: EdgeInsets.all(0),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: SizedBox(
            width: Get.width,
            child: Text(content, style: TextStyle(
                fontSize: 14, color: Colors.black.withOpacity(0.75))),
          ),
        ),
      ),
    );
  }

  static Widget imageCard(String assetPath, String title,
      String content, String url) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        color: Colors.white,
        elevation: 5,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5)
        ),
        margin: EdgeInsets.all(0),
        child: InkWell(
          onTap: () {
            if(url.contains("www.anvaysoft.com")) {
              try {
                Get.toNamed(url.replaceAll("www.anvaysoft.com", "").replaceAll("https://", ""));
                print(url);
              }catch(e){
                print(e);
              }
            }else{
              launch(url);
            }
          },
          borderRadius: BorderRadius.circular(5),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: SizedBox(
              width: Get.width,
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Image.asset(assetPath, height: 40, width: 40)
                  ),
                  Widgets.paddingWidth(),
                  Widgets.paddingWidth(),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title, style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                        Text(content, style: TextStyle(fontSize: 12, color: Colors
                            .black.withOpacity(0.6))),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  static Widget imageCardBorder(String assetPath, String title,
      String content) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: BorderSide(color: Colors.black.withOpacity(0.1))
        ),
        margin: EdgeInsets.all(0),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: SizedBox(
            width: Get.width,
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: Image.asset(assetPath, height: 40, width: 40)
                ),
                Widgets.paddingWidth(),
                Widgets.paddingWidth(),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title, style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold)),
                      Text(content, style: TextStyle(fontSize: 12, color: Colors
                          .black.withOpacity(0.6))),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static Widget cardFullCentered(String title, String content, String url) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        color: Colors.white,
        elevation: 5,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5)
        ),
        margin: EdgeInsets.all(0),
        child: InkWell(
          onTap: () {
            launch(url);
          },
          borderRadius: BorderRadius.circular(5),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: SizedBox(
              width: Get.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(title, style: TextStyle(fontSize: 16,
                              fontWeight: FontWeight.bold)),
                          paddingWidth(),
                          Text(content, style: TextStyle(fontSize: 12,
                              color: Colors.black.withOpacity(0.6))),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  static Widget cardFull(String title, String content, String url) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        color: Colors.white,
        elevation: 5,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5)
        ),
        margin: EdgeInsets.all(0),
        child: InkWell(
          onTap: () {
            launch(url);
          },
          borderRadius: BorderRadius.circular(5),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: SizedBox(
              width: Get.width,
              child: Row(
                children: [
                  paddingWidth(),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(title, style: TextStyle(fontSize: 16,
                              fontWeight: FontWeight.bold)),
                          paddingWidth(),
                          Text(content, style: TextStyle(fontSize: 12,
                              color: Colors.black.withOpacity(0.6))),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  static Widget titleBar(IconData iconData, String content) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: BorderSide(color: Colors.black.withOpacity(0.1))
        ),
        margin: EdgeInsets.all(0),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              Icon(iconData, color: Colors.black.withOpacity(0.75),),
              paddingWidth(),
              Text(content, style: TextStyle(fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(0.75))),
            ],
          ),
        ),
      ),
    );
  }

  static Widget titleBarWithWidget(IconData iconData, String content,
      Widget widget) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        color: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: BorderSide(color: Colors.black.withOpacity(0.1))
        ),
        margin: EdgeInsets.all(0),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(iconData, color: Colors.black.withOpacity(0.75),),
                  paddingWidth(),
                  Text(content, style: TextStyle(fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black.withOpacity(0.75))),
                ],
              ),
              paddingHeight(),
              paddingHeight(),
              widget
            ],
          ),
        ),
      ),
    );
  }

  static Widget titleBarWithWidgetNoPadding(IconData iconData, String content,
      Widget widget) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        color: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: BorderSide(color: Colors.black.withOpacity(0.1))
        ),
        margin: EdgeInsets.all(0),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(iconData, color: Colors.black.withOpacity(0.75),),
                  paddingWidth(),
                  Text(content, style: TextStyle(fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black.withOpacity(0.75))),
                ],
              ),
              widget
            ],
          ),
        ),
      ),
    );
  }

  static Widget titleBarWithWidgetRow(IconData iconData, String content,
      Widget widget) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        color: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: BorderSide(color: Colors.black.withOpacity(0.1))
        ),
        margin: EdgeInsets.all(0),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(iconData, color: Colors.black.withOpacity(0.75),),
              paddingWidth(),
              Expanded(child: Text(content, style: TextStyle(fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(0.75)))),
              widget
            ],
          ),
        ),
      ),
    );
  }

  static Widget screen(List<Widget> widgets) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(
              scrollbars: false),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: SizedBox(
              width: constraints.maxWidth,
              child: Center(
                child: SizedBox(
                  width: constraints.maxWidth > 500 ? 500 : null,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: widgets,
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  static Widget logo(){
    return InkWell(
      onTap: (){
        Get.toNamed("/");
      },
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Image.asset("assets/logo.png", height:40, width: 120,),
      ),
    );
  }

  static Widget devices(String assetPath, String appName, Widget widget){
    return LayoutBuilder(
        builder: (context, constraints) {
          return SizedBox(
            width: constraints.maxWidth,
            height: constraints.maxWidth/2,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: constraints.maxWidth/1,
                    height: constraints.maxWidth/2,
                    child: Align(
                      alignment: Alignment.center,
                      child: DeviceFrame(
                        device: Devices.macOS.macBookPro,
                        screen: widget
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: SizedBox(
                    width: constraints.maxWidth/3.75,
                    height: constraints.maxWidth/2.75,
                    child: DeviceFrame(
                      device: Devices.ios.iPhoneSE,
                      screen: widget
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 45, 0),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      width: constraints.maxWidth/2.75,
                      height: constraints.maxWidth/5,
                      child: DeviceFrame(
                        device: Devices.android.smallPhone,
                        orientation: Orientation.landscape,
                        screen: widget
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: SizedBox(
                    width: constraints.maxWidth/2.75,
                    height: constraints.maxWidth/2.75,
                    child: DeviceFrame(
                      device: Devices.ios.iPadPro11Inches,
                      screen: widget
                    ),
                  ),
                ),
              ],
            ),
          );
        }
    );
  }

  static Widget mailCard(){
    return SizedBox(
      width: double.infinity,
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: BorderSide(color: Colors.black.withOpacity(0.1))
        ),
        margin: EdgeInsets.all(0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
              child: Row(
                children: [
                  Icon(Icons.mail, color: Colors.black.withOpacity(0.75),),
                  paddingWidth(),
                  Text("Contact developer", style: TextStyle(fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black.withOpacity(0.75))),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Text("Please utilize the button below to get in touch with the developer if you have any queries regarding the app.", style: TextStyle(color: Colors.black.withOpacity(0.75)),),
            ),
            paddingHeightTen(),
            Divider(height: 0.25,),
            TextButton(
              onPressed: () {
                final Uri params = Uri(
                  scheme: 'mailto',
                  path: 'anvaysoft@gmail.com',
                  query: 'subject=&body=', //add subject and body here
                );
                var url = params.toString();
                launch(url);
              },
              style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.all(20)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.open_in_new, color: Colors.black.withOpacity(0.75)),
                  SizedBox(width: 10),
                  Text("Email", style: TextStyle( color: Colors.black.withOpacity(0.75))),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}
