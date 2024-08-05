import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:social/custom_widgets/custom_text_field.dart';
import 'package:social/screen/blood/blood_donation.dart';
import 'package:social/screen/bottom_navigaton/bottom_navigation_pages.dart';
import 'package:social/screen/post/simple_post.dart';
import 'package:social/screen/recharge/recharge_page.dart';
import 'package:social/screen/timeline/timeline_page.dart';
import 'package:social/screen/videos/video.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}
final List<String> imgList = [
  "assets/img_one.jpeg",
  "assets/img_two.jpeg",
  "assets/img_three.jpeg",
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xffe8e8e8),
          body: SingleChildScrollView(
            child:
            Padding(
              padding:  EdgeInsets.all(screenWidth*0.03),
              child: Column(
                children: [
                  SizedBox(height: screenHeight*0.02),
                  Container(
                    height: screenHeight*0.20,
                    width: screenWidth,
                    child: CarouselSlider(
                      options: CarouselOptions(
                        autoPlay: true,
                      ),
                      items: imgList
                          .map((item) => Padding(
                            padding:  EdgeInsets.all(8.0),
                            child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: allColor.containerColor, width: 3)
                        ),
                              width: screenWidth,
                              child: Image.asset(item,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ))
                          .toList())),
                  SizedBox(height: screenHeight*0.10),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xffd8d9dc),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(left: screenWidth*0.02, right:  screenWidth*0.02,
                              top:  screenWidth*0.05, bottom:  screenWidth*0.02),
                          child: Row(
                            children: [
                              InkWell(onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>SimplePost()));
                              },
                                child: Container(
                                  height: screenHeight*0.07,
                                  width: screenWidth*0.27,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(child: Text("Product", style: TextStyle(fontSize: screenWidth*0.04),)),
                                ),
                              ),
                              Spacer(),
                              InkWell(onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>TimeLine()));
                              },
                                child: Container(
                                  height: screenHeight*0.07,
                                  width: screenWidth*0.27,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(child: Text("Timeline", style: TextStyle(fontSize: screenWidth*0.04),)),
                                ),
                              ),
                              Spacer(),
                              InkWell(onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Recharge()));
                              },
                                child: Container(
                                  height: screenHeight*0.07,
                                  width: screenWidth*0.27,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(child: Text("Recharge", style: TextStyle(fontSize: screenWidth*0.04),)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(left: screenWidth*0.02, right:  screenWidth*0.02,
                          top:  screenWidth*0.02, bottom:  screenWidth*0.05),
                          child: Row(
                            children: [
                              InkWell(onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>BloodDonation()));
                              },
                                child: Container(
                                  height: screenHeight*0.07,
                                  width: screenWidth*0.27,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(child: Text("  Blood \nDonation", style: TextStyle(fontSize: screenWidth*0.04),)),
                                ),
                              ),
                              Spacer(),
                              InkWell(onTap: (){},
                                child: Container(
                                  height: screenHeight*0.07,
                                  width: screenWidth*0.27,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(child: Text("Bill", style: TextStyle(fontSize: screenWidth*0.04),)),
                                ),
                              ),
                              Spacer(),
                              InkWell(onTap: (){},
                                child: Container(
                                  height: screenHeight*0.07,
                                  width: screenWidth*0.27,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(child: Text("Emergency\n    Need", style: TextStyle(fontSize: screenWidth*0.04,),)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: screenHeight*0.05),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Videos()));
                      },
                      child: Container(
                        width: screenWidth,
                        height: screenHeight*0.20,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/video.jpeg"), fit: BoxFit.cover),
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}
