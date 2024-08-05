import 'package:flutter/material.dart';
import 'package:social/custom_widgets/custom_text_field.dart';
class MessageDetailsPage extends StatefulWidget {
  const MessageDetailsPage({Key? key}) : super(key: key);

  @override
  _MessageDetailsPageState createState() => _MessageDetailsPageState();
}

class _MessageDetailsPageState extends State<MessageDetailsPage> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: screenWidth*0.05),
                Row(children: [
                  InkWell(onTap: (){Navigator.pop(context);},
                      child: Icon(Icons.arrow_back, size: 30)),
                  SizedBox(width: screenWidth*0.05),
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
                        Text("online", style: TextStyle(fontSize: screenWidth*0.03, color: Colors.blue)),
                      ])]),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: allColor.homebgColor,
                    height: screenHeight*0.05,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Hi",textAlign: TextAlign.start),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: allColor.containerColor,
                        height: screenHeight*0.05,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("How are you",textAlign: TextAlign.end,style: TextStyle(color: Colors.white)),
                        ),
                      ),
                    )]),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: allColor.homebgColor,
                    height: screenHeight*0.05,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("I'm fine .. Thanks & u?",textAlign: TextAlign.start),
                    ),
                  ),
                ),
                Row(
                    children: [
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: allColor.containerColor,
                          height: screenHeight*0.05,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("I'm also fine. Thank you so much",textAlign: TextAlign.start,style: TextStyle(color: Colors.white)),
                          ),
                        ),
                      )]),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: allColor.homebgColor,
                    height: screenHeight*0.05,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Okay. see u again",textAlign: TextAlign.start),
                    ),
                  ),
                ),
                Row(
                    children: [
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: allColor.containerColor,
                          height: screenHeight*0.05,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Okk Bye",textAlign: TextAlign.start,style: TextStyle(color: Colors.white)),
                          ),
                        ),
                      )]),

              ],
            ),
          ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Flexible(
                  child: TextFormField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: allColor.textFieldColor,
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: allColor.containerColor)),
                        focusColor: allColor.containerColor,
                        contentPadding: EdgeInsets.fromLTRB(15, 1, 1, 0),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: allColor.containerColor),
                            borderRadius: BorderRadius.circular(10)),
                        hintText: "write message"
                    ),
                  ),
                ),
                SizedBox(width: screenWidth*0.02),
                Container(
                    child: Icon(Icons.send, color: Colors.white),
                    decoration: BoxDecoration(
                        color: allColor.containerColor,
                        borderRadius: BorderRadius.circular(360)),
                    height: screenHeight*0.06,
                    width: screenWidth*0.13),
              ],
            ),
          ),
        )
    );
  }
}
