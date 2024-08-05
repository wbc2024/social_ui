import 'package:flutter/material.dart';
import 'package:social/custom_widgets/custom_container.dart';
import 'package:social/custom_widgets/custom_navigator.dart';
import 'package:social/custom_widgets/custom_text_field.dart';
import 'package:social/screen/home_page/home_page.dart';
class JobPost extends StatefulWidget {
  const JobPost({Key? key}) : super(key: key);

  @override
  _JobPostState createState() => _JobPostState();
}

class _JobPostState extends State<JobPost> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child:
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  CustomNavigator(),
                  TextFormField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: allColor.containerColor)),
                          filled: true,
                          fillColor: allColor.textFieldColor,
                          focusColor: allColor.containerColor,
                          contentPadding: EdgeInsets.fromLTRB(10, 5, 5, 0),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: allColor.containerColor)),
                          hintText: "post Name")),
                  SizedBox(height: screenHeight*0.03),
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: allColor.containerColor)
                      ),
                      width: screenWidth,
                      height: screenHeight*0.20,
                      child: Center(child: Text('Image',style: TextStyle(fontSize: screenWidth*0.04),))),
                  SizedBox(height: screenHeight*0.03),
                  Container(
                      decoration: BoxDecoration(
                          color: allColor.textFieldColor,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all()),
                      width: screenWidth,
                      height: screenHeight*0.20,
                      child: Center(child: Text('product details',style: TextStyle(fontSize: screenWidth*0.04),))),
                  SizedBox(height: screenHeight*0.03),
                  Row(
                      children: [
                        Icon(Icons.check_box_rounded, color: allColor.containerColor),
                        SizedBox(width: screenWidth*0.02),
                        Text("For Job post you should pay"),
                        Spacer(),
                        Container(
                            decoration: BoxDecoration(
                                color: allColor.containerColor,
                                borderRadius: BorderRadius.circular(10)),
                            height: screenHeight*0.05,
                            child: Center(child: Padding(
                                padding:  EdgeInsets.only(left: screenWidth*0.05, right: screenWidth*0.05,
                                    top: screenWidth*0.02, bottom: screenWidth*0.02),
                                child: Text("Payment", style: TextStyle(fontSize: screenWidth*0.04,color: Colors.white)))))]),
                  SizedBox(height: screenHeight*0.05),
                  InkWell(onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                  },
                      child: CustomContainer(
                          text: "Job Post"))

                ],
              ),
            ),
          ),
        ));
  }
}
