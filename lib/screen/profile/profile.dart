import 'package:flutter/material.dart';
class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("My Profile"),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Card(
                      elevation: 2,
                      shadowColor: Colors.lightBlue,
                      child: Padding(
                        padding:  EdgeInsets.all(15),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Hey !", style: TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold,
                                fontSize: screenWidth*0.05)),

                            SizedBox(height: screenHeight*0.01),
                            Center(
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(),
                                    image: DecorationImage(
                                        image: AssetImage("assets/g.jpg"), fit: BoxFit.cover
                                    ),
                                    color: Colors.deepOrangeAccent,
                                    borderRadius: BorderRadius.circular(360)
                                ),
                                height: screenHeight*0.08,
                                width: screenWidth*0.17,
                              ),
                            ),
                            Center(child: Padding(padding:  EdgeInsets.all(08),
                                child: Text("Anamika Roy", style: TextStyle(fontSize: screenWidth*0.05)))),
                            Divider(),
                            Padding(padding:  EdgeInsets.all(03),
                              child: Text("Phone Number : 01xxxxxxxxx")),
                            Padding(padding:  EdgeInsets.all(03),
                                child: Text("Email : test@gmail.com")),

                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight*0.05),
                    Card(
                      elevation: 2,
                        shadowColor: Colors.lightBlue,
                        child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                              height: screenHeight*0.25,
                              width: screenWidth,
                              child: Center(
                                  child: Text("NID Card"))),
                          Container(
                              height: screenHeight*0.25,
                              width: screenWidth,
                              child: Center(
                                  child: Text("NID Card"))),
                        ],
                      ),
                    )
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
