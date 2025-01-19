import 'package:anvaysoft/Tabs/Home/home.dart';
import 'package:anvaysoft/Tabs/News/news.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Tabs/About/about.dart';

class AnvaySoftController extends GetxController{

  var selectedIndex = 0.obs;

  List<Widget> pages = [Home(), News(), About()];

  void onItemTapped(int index) {
    selectedIndex.value = index;
  }

}