import 'package:anvaysoft/Anvaysoft/anvaysoft.dart';
import 'package:anvaysoft/AppDetails/appdetails.dart';
import 'package:anvaysoft/AppsInfo/appsinfo.dart';
import 'package:anvaysoft/AppsInfo/appsinfocontroller.dart';
import 'package:anvaysoft/PrivacyPolicy/privacypolicy.dart';
import 'package:anvaysoft/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // final fav = FlutterAppIcons();
  // fav.setIcon(icon: 'assets/logo2.png');
  Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  setPathUrlStrategy();

  Map<String, Widget Function(BuildContext)> map = {};

  map["/"] = (c) => const AnvaySoft();
  map["/appsinfo"] = (c) => AppsInfo();
  map["/privacypolicy"] = (c) => PrivacyPolicy();

  for(int i=0; i<AppsInfoController.map.length; i++){
    map["/"+ AppsInfoController.map[i]["appname"].replaceAll(" ", "").replaceAll("#", "sharp").toLowerCase()] = (c)=>AppDetails(
      assetPath: "assets/images/"+AppsInfoController.map[i]["icon"],
      appName: AppsInfoController.map[i]["appname"],
      appVersion: AppsInfoController.map[i]["appversion"],
      appBarColor: AppsInfoController.map[i]["appbarcolor"],
      bodyColor: AppsInfoController.map[i]["bodycolor"],
      appDescription: AppsInfoController.map[i]["appdescription"],
      googleplaylink: AppsInfoController.map[i]["googleplaylink"],
      appstorelink: AppsInfoController.map[i]["appstorelink"],
    );
  }

  print(map);


  runApp(GetMaterialApp(
    initialRoute: "/",
    routes: map,
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      useMaterial3: false,
      fontFamily: "anvaysoft",
      colorScheme: ColorScheme.fromSwatch(
        accentColor: Colors.black,
        primarySwatch: Colors.grey,
      ),
    ),
  ));
}
