import 'package:get/get.dart';
import 'package:url_launcher/url_launcher_string.dart';

class AppDetailsController extends GetxController{

  void openMail() async {
    final Uri params = Uri(
      scheme: 'mailto',
      path: 'anvaysoft@gmail.com',
      query: 'subject=&body=', //add subject and body here
    );

    var url = params.toString();
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw 'Could not launch $url';
    }
  }

}

