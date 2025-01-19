import 'package:anvaysoft/CustomPackages/widgets.dart';
import 'package:anvaysoft/Tabs/About/aboutcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {

    var controller = Get.put(AboutController());

    return Widgets.screen([
      Widgets.titleBarWithWidget(
        Icons.history,
        "Anvaysoft",
        Text(
            '''The word "Anvaysoft" originates from the Sanskrit term "Anvaya", symbolizing positivity, coupled with the tech industry suffix "soft", signifying its technological focus.''',
            style: TextStyle(color: Colors.black.withOpacity(0.75))
        ),
      ),
      Widgets.paddingHeightTen(),
      Widgets.titleBarWithWidget(
          Icons.group,
          "Team Info",
          Column(
            children: [
              Widgets.cardFullCentered(
                  "Hrishi Suthar",
                  "Programmer",
                  "https://www.instagram.com/hrishizofficial"
              ),
              Widgets.paddingHeightTen(),
              Widgets.cardFullCentered(
                  "Abhishek Suthar",
                  "Founder",
                  "https://www.instagram.com/s_abhishek98"
              ),
              Widgets.paddingHeightTen(),
              Widgets.cardFullCentered(
                  "Dhirendra Suthar",
                  "Internal Guide",
                  "https://www.instagram.com/dp_suthar"
              ),
            ],
          )
      ),
      Widgets.paddingHeightTen(),
      Widgets.titleBarWithWidget(
        Icons.location_on,
        "Country of origin",
        SizedBox(
            width: Get.width,
            child: Text("Anvaysoft's country of origin is India, where the company was founded and established.", style: TextStyle(color: Colors.black.withOpacity(0.75)), textAlign: TextAlign.start,)),
      ),
      Widgets.paddingHeightTen(),
      Widgets.titleBarWithWidgetRow(
        Icons.web_outlined,
        "Website version",
        Text("2.0.1", textAlign: TextAlign.start,),
      ),
      Widgets.paddingHeightTen(),
      Widgets.mailCard(),
      Widgets.paddingHeightTen(),
      Widgets.paddingHeightTen(),
      Widgets.paddingHeightTen(),
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.copyright, color: Colors.black.withOpacity(0.1),),
          Widgets.paddingWidth(),
          Text("2023 Anvaysoft", style: TextStyle(color: Colors.black.withOpacity(0.1)))
        ],
      ),
      Widgets.paddingHeightTen(),
      Widgets.paddingHeightTen(),
      Widgets.paddingHeightTen(),
    ]);
  }
}
