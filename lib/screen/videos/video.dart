import 'package:flutter/material.dart';
import 'package:social/custom_widgets/custom_text_field.dart';
class Videos extends StatefulWidget {
  const Videos({Key? key}) : super(key: key);

  @override
  _VideosState createState() => _VideosState();
}

class _VideosState extends State<Videos> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Videos"),
          ),
          body: Column(
            children: [
              Expanded(
                child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (context, index){
                      return Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Video tittle in here............"),
                            SizedBox(height: screenWidth*0.04),
                            Container(
                              width: screenWidth,
                              height: screenHeight*0.20,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/video.jpeg"), fit: BoxFit.cover),
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                            ),
                            SizedBox(height: screenWidth*0.10),
                            Divider(thickness: 2,),

                          ],
                        ),
                      );
                    }),
              )
            ],
          ),
        ));
  }
}
