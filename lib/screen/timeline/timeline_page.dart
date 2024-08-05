import 'package:flutter/material.dart';
import 'package:social/custom_widgets/custom_text_field.dart';
class TimeLine extends StatefulWidget {
  const TimeLine({Key? key}) : super(key: key);

  @override
  _TimeLineState createState() => _TimeLineState();
}
TextEditingController _commentController= TextEditingController();
class _TimeLineState extends State<TimeLine> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Timeline"),
          ),
          body: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: 20,
                    itemBuilder: (context, index){
                      return Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(),
                                      image: DecorationImage(
                                          image: AssetImage("assets/g.jpg"), fit: BoxFit.cover),
                                      color: Colors.deepOrangeAccent,
                                      borderRadius: BorderRadius.circular(360)),
                                  height: screenHeight*0.08,
                                  width: screenWidth*0.17,
                                ),
                                SizedBox(width: screenWidth*0.02),
                                Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Anamika Roy", style: TextStyle(fontSize: screenWidth*0.04, fontWeight: FontWeight.bold)),
                                    SizedBox(height: screenWidth*0.02),
                                    Text("22 Feb 2022", style: TextStyle(fontSize: screenWidth*0.03))]),

                              ]
                            ),
                            SizedBox(height: screenWidth*0.05),
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
                            SizedBox(height: screenWidth*0.04),
                            Row(
                              children: [
                                Padding(padding:  EdgeInsets.only(left: 15),
                                  child: Text("Like")),
                                SizedBox(width: screenWidth*0.02),
                                Icon(Icons.favorite, color: Colors.red),
                                SizedBox(width: screenWidth*0.20),
                                Text("Share", style: TextStyle(color: Colors.blue))]),
                            SizedBox(height: screenWidth*0.05),
                            TextFormField(
                              controller: _commentController,
                              maxLines: null,
                              keyboardType: TextInputType.multiline,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: allColor.textFieldColor,
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: allColor.containerColor)),
                                focusColor: allColor.containerColor,
                                contentPadding: EdgeInsets.fromLTRB(20, 1, 1, 0),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: allColor.containerColor),
                                    borderRadius: BorderRadius.circular(10)),
                                hintText: "write a comment",
                                suffixIcon: Icon(Icons.send, color: Colors.blue,)
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
