import 'package:anvaysoft/CustomPackages/widgets.dart';
import 'package:anvaysoft/Tabs/News/newcontrollers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class News extends StatelessWidget {
  News({Key? key}) : super(key: key);

  var webviewController;


  @override
  Widget build(BuildContext context) {

    var controller = Get.put(NewsController());

    return Obx(()=> controller.showNewsListview.value
          ? ScrollConfiguration(
            behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
            child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: controller.ntitles.length,
            itemBuilder: (context,index){
              return LayoutBuilder(
                builder: (context, constraints){
                  return SizedBox(
                    width: constraints.maxWidth,
                    child: Center(
                      child: SizedBox(
                        width: constraints.maxWidth>500?500:null,
                        child: Card(
                            elevation: 5,
                            margin: index == controller.ntitles.length-1
                                ?const EdgeInsets.fromLTRB(10, 10, 10, 10)
                                :const EdgeInsets.fromLTRB(10, 10, 10, 0),
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)
                            ),
                            child: Padding(
                                padding: const EdgeInsets.all(8),
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          const Icon(Icons.speaker, color: Colors.black,),
                                          Widgets.paddingWidth(),
                                          Expanded(
                                              child: Text(
                                                controller.ntitles[index],
                                                style: const TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold, fontFamily: "anvaysoft"),
                                              ))
                                        ],
                                      ),

                                      if (controller.nimages[index] != "")Padding(
                                        padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                                        child: Center(child: Image.network(controller.nimages[index])),
                                      ),

                                      if (controller.nmessages[index] != "")Padding(
                                        padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                                        child: Text(controller.nmessages[index], style: TextStyle(color: Colors.black.withOpacity(0.75), fontFamily: "anvaysoft")),
                                      ),

                                      if (controller.nwebs[index] != "")Padding(
                                          padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                                          child: SizedBox(
                                              width: double.infinity,
                                              height: 200,
                                              child: WebViewX(
                                                  width: MediaQuery.of(context).size.width,
                                                  height: 200,
                                                  initialContent: controller.nwebs[index],
                                                  initialSourceType: SourceType.html,
                                                  onWebViewCreated: (controller) => webviewController = controller
                                              )
                                          )
                                      ),

                                      if(controller.nurls[index]!="" && controller.nurltexts[index]!="")
                                        Padding(
                                          padding: const EdgeInsets.all(8),
                                          child: SizedBox(
                                            width: MediaQuery.of(context).size.width,
                                            child: ElevatedButton(
                                                style: ButtonStyle(
                                                    elevation: MaterialStateProperty.all(0),
                                                    backgroundColor: MaterialStateProperty.all(Colors.white),
                                                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(5),
                                                        side: BorderSide(color: Colors.grey.withOpacity(0.3))
                                                    ))
                                                ),
                                                onPressed: () async{
                                                  if(controller.nurls[index].contains("www.anvaysoft.com")){
                                                    Get.toNamed(controller.nurls[index].replaceAll("https://www.anvaysoft.com", "").replaceAll("www.anvaysoft.com", ""));
                                                  }else {
                                                    String url = controller.nurls[index];
                                                    if (await canLaunch(url)) {
                                                      await launch(url);
                                                    } else {
                                                      throw 'Could not launch $url';
                                                    }
                                                  }
                                                },
                                                child: Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Text(controller.nurltexts[index],style: const TextStyle(color: Colors.black,fontSize: 16, fontFamily: "anvaysoft"),),
                                                )
                                            ),
                                          ),
                                        ),

                                      if (controller.nviews[index] != "" && controller.ntimes[index]!="")
                                        Padding(
                                            padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                //Icon(Icons.remove_red_eye,color: Colors.white.withOpacity(0.3),size: 14.0),
                                                //SizedBox(width: 5),
                                                //Expanded(child: Text(humanizeInt(int.parse(nviews[index])),style: TextStyle(fontSize:12,color: Colors.white.withOpacity(0.3)))),
                                                const Spacer(),
                                                Text(timeago.format(DateTime.parse(controller.ntimes[index].substring(0,19)).add(DateTime.now().timeZoneOffset)),style: TextStyle(fontSize:12,color: Colors.black.withOpacity(0.3), fontFamily: "anvaysoft"))
                                              ],
                                            )
                                        )
                                    ]
                                )
                            )
                        ),
                      ),
                    ),
                  );
                },
              );
            }),
          )
          : const Center(child: CircularProgressIndicator(color: Colors.black,)));
  }
}
