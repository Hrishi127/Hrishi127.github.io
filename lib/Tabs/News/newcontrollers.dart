import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';

class NewsController extends GetxController{

  DatabaseReference dbrefnews = FirebaseDatabase.instance.ref().child("news");
  var ntitles = <String>[].obs;
  var nmessages = <String>[].obs;
  var nimages = <String>[].obs;
  var nwebs = <String>[].obs;
  var nurls = <String>[].obs;
  var nurltexts = <String>[].obs;
  var nviews = <String>[].obs;
  var ntimes = <String>[].obs;
  var showNewsListview = false.obs;
  
  @override
  void onInit() {
    super.onInit();

    dbrefnews.onChildAdded.listen((event) {
      Map map = event.snapshot.value as Map;
      ntitles.insert(0,map["title"].toString());
      nmessages.insert(0,map["message"].toString());
      nimages.insert(0,map["image"].toString());
      nwebs.insert(0,map["web"].toString());
      nurls.insert(0,map["url"].toString());
      nurltexts.insert(0,map["urltext"].toString());
      nviews.insert(0,map["views"].toString().replaceAll(".0", ""));
      ntimes.insert(0,map["time"].toString());
      showNewsListview.value = true;
    });

    dbrefnews.onChildRemoved.listen((event) {
      Map map = event.snapshot.value as Map;
      ntitles.removeAt(ntimes.indexOf(map["time"]));
      nmessages.removeAt(ntimes.indexOf(map["time"]));
      nimages.removeAt(ntimes.indexOf(map["time"]));
      nwebs.removeAt(ntimes.indexOf(map["time"]));
      nurls.removeAt(ntimes.indexOf(map["time"]));
      nurltexts.removeAt(ntimes.indexOf(map["time"]));
      nviews.removeAt(ntimes.indexOf(map["time"]));
      ntimes.removeAt(ntimes.indexOf(map["time"]));
    });

    dbrefnews.onChildChanged.listen((event) {
      Map map = event.snapshot.value as Map;
      int position = ntimes.indexOf(map["time"]);
      ntitles[position] = map["title"].toString();
      nmessages[position] = map["message"].toString();
      nimages[position] = map["image"].toString();
      nwebs[position] = map["web"].toString();
      nurls[position] = map["url"].toString();
      nurltexts[position] = map["urltext"].toString();
      nviews[position] = map["view"].toString();
      ntimes[position] = map["time"].toString();
      showNewsListview.value = true;
    });


  }
  
}