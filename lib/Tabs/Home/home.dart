import 'package:anvaysoft/CustomPackages/widgets.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgets.screen([
          Widgets.cardBorder("Anvaysoft is an IT company that specializes in providing a range of information technology services and solutions, tailored to meet user-friendly design principles."),
          Widgets.paddingHeightTen(),
          Widgets.titleBarWithWidget(
              Icons.storefront,
              "Product Pages",
              Column(
                children: [
                  Widgets.imageCard(
                    "assets/images/gp.png",
                    "Google Play",
                    "Explore Anvaysoft's Android apps for versatile and user-friendly solutions.",
                    "https://play.google.com/store/apps/dev?id=8357215197056212871",
                  ),
                  Widgets.paddingHeightTen(),
                  Widgets.imageCard(
                    "assets/images/as.png",
                    "App Store",
                    "Discover Anvaysoft's iOS apps for intuitive and versatile mobile experiences.",
                    "https://apps.apple.com/in/developer/hrishi-suthar/id1660005858",
                  ),
                  Widgets.paddingHeightTen(),
                  Widgets.imageCard(
                    "assets/images/yt.png",
                    "YouTube",
                    "Explore Anvaysoft's YouTube channel to find exciting app teasers and stay up-to-date with latest releases and updates.",
                    "https://www.youtube.com/c/Techbajao",
                  ),
                  Widgets.paddingHeightTen(),
                  Widgets.imageCard(
                    "assets/images/ig.png",
                    "Instagram",
                    "Stay in the loop with latest news and get exclusive sneak peeks. Explore Instagram page for all the exciting updates.",
                    "https://www.instagram.com/hrishizofficial",
                  )
                ],
              )
          ),
          Widgets.paddingHeightTen(),
          Widgets.titleBarWithWidget(
            Icons.list_alt_rounded,
            "App Details",
            Widgets.imageCard(
              "assets/images/apps.png",
              "Apps Info",
              "Dive into the app's features. Discover how these apps can enhance your digital journey.",
              "https://www.anvaysoft.com/appsinfo",
            ),
          ),
          Widgets.paddingHeightTen(),
          Widgets.cardBorder("Anvaysoft specializes in crafting utility and educational apps, providing innovative tools and resources to enhance learning experiences for students and educators. The apps are designed to make various activities more efficient and user-friendly.")
        ]);
  }
}
