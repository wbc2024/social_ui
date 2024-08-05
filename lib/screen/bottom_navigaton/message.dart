import 'package:flutter/material.dart';
import 'package:social/custom_widgets/custom_text_field.dart';
import 'package:social/screen/bottom_navigaton/message_details_page.dart';
class Message extends StatefulWidget {
  const Message({Key? key}) : super(key: key);

  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Message")),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Expanded(child: ListView.builder(
                      itemCount: 50,
                      itemBuilder: (context, index){
                        return Padding(
                          padding: const EdgeInsets.all(10),
                          child: InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>MessageDetailsPage()));
                            },
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(),
                                            image: DecorationImage(
                                                image: AssetImage("assets/g.jpg"), fit: BoxFit.cover),
                                            color: Colors.deepOrangeAccent,
                                            borderRadius: BorderRadius.circular(360)),
                                        height: screenHeight*0.06,
                                        width: screenWidth*0.13),
                                      SizedBox(width: screenWidth*0.02),
                                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Anamika Roy", style: TextStyle(fontSize: screenWidth*0.04, fontWeight: FontWeight.bold)),
                                            SizedBox(height: screenWidth*0.01,),
                                            Text("Shall we meet today?", style: TextStyle(fontSize: screenWidth*0.03)),
                                          ]),
                                      Spacer(),
                                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              child:
                                              Center(child: Text('2', style: TextStyle(color: Colors.white))),
                                              decoration: BoxDecoration(
                                                  color: allColor.containerColor,
                                                  borderRadius: BorderRadius.circular(360)),
                                              height: screenHeight*0.02,
                                              width: screenWidth*0.04,
                                            ),
                                            SizedBox(height: screenWidth*0.01,),
                                            Text("5 : 45 PM", style: TextStyle(fontSize: screenWidth*0.03)),
                                          ]),

                                    ]
                                ),


                                SizedBox(height: screenHeight*0.01,),
                                Divider(),

                              ],
                            ),
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ));
  }
}
