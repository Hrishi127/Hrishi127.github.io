import 'package:anvaysoft/CustomPackages/widgets.dart';
import 'package:anvaysoft/PrivacyPolicy/privacypolicycontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:html_viewer_elite/html_viewer_elite.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {

    var controller = Get.put(PrivacyPolicyController());

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Widgets.logo(),
          Widgets.divider(),
          Expanded(
            child: Widgets.screen([
              Widgets.titleBarWithWidgetNoPadding(
                Icons.shield,
                "Privacy Policy",
                Html(
                  data: controller.html
                ),
              ),
              Widgets.paddingHeightTen(),
              Widgets.mailCard()
            ])
          )
        ],
      ),
    );
  }
}
