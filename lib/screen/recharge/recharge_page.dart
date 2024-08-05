import 'package:flutter/material.dart';
import 'package:social/custom_widgets/custom_container.dart';
import 'package:social/custom_widgets/custom_text_field.dart';
class Recharge extends StatefulWidget {
  const Recharge({Key? key}) : super(key: key);

  @override
  _RechargeState createState() => _RechargeState();
}
TextEditingController _numberController= TextEditingController();
class _RechargeState extends State<Recharge> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Recharge")),
          body: SingleChildScrollView(
            child:
            Padding(
              padding:  EdgeInsets.all(20),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(padding:  EdgeInsets.only(left: screenWidth*0.02,top: screenWidth*0.04, bottom: screenWidth*0.01),
                      child: Text("Phone", style: TextStyle(fontSize: screenWidth*0.04,
                          fontWeight: FontWeight.bold,color: Colors.blueGrey))),
                  CustomTextField(
                      prefixIcon: Icons.call,
                      controller: _numberController,
                      hintText: "Enter phone number",
                      obsecureValue: false),

                  SizedBox(height: screenWidth*0.03),
                  Padding(padding:  EdgeInsets.only(left: screenWidth*0.02,top: screenWidth*0.04, bottom: screenWidth*0.01),
                      child: Text("Amount", style: TextStyle(fontSize: screenWidth*0.04,
                          fontWeight: FontWeight.bold,color: Colors.blueGrey))),
                  CustomTextField(
                      prefixIcon: Icons.attach_money_outlined,
                      controller: _numberController,
                      hintText: "",
                      obsecureValue: false),

                  SizedBox(height: screenWidth*0.10),
                  Padding(padding:  EdgeInsets.only(left: screenWidth*0.02,top: screenWidth*0.04, bottom: screenWidth*0.01),
                      child: Text("Operator", style: TextStyle(fontSize: screenWidth*0.04,
                          fontWeight: FontWeight.bold,color: Colors.blueGrey))),
                  SizedBox(height: screenWidth*0.02),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xffd8d9dc),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(left: screenWidth*0.02, right:  screenWidth*0.02,
                              top:  screenWidth*0.05, bottom:  screenWidth*0.02),
                          child: Row(
                            children: [
                              InkWell(onTap: (){},
                                child: Container(
                                  height: screenHeight*0.08,
                                  width: screenWidth*0.20,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/gpp.png")),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                              Spacer(),
                              InkWell(onTap: (){},
                                child: Container(
                                  height: screenHeight*0.08,
                                  width: screenWidth*0.20,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("assets/bl.png")),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),

                                ),
                              ),
                              Spacer(),
                              InkWell(onTap: (){},
                                child: Container(
                                  height: screenHeight*0.08,
                                  width: screenWidth*0.20,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("assets/robi.jpg")),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                              Spacer(),
                              InkWell(onTap: (){},
                                child: Container(
                                  height: screenHeight*0.08,
                                  width: screenWidth*0.20,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("assets/teletalk.jpg")),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                            ],
                          ),
                        ),


                        SizedBox(height: screenWidth*0.05),
                      ],
                    ),
                  ),
                  SizedBox(height: screenWidth*0.15),
                  InkWell(onTap: (){},
                    child: CustomContainer(
                        text: "Recharge"),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
