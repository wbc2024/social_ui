import 'package:flutter/material.dart';
import 'package:social/custom_widgets/custom_container.dart';
import 'package:social/custom_widgets/custom_text_field.dart';
import 'package:social/screen/bottom_navigaton/bottom_navigation_pages.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}
TextEditingController _emailController= TextEditingController();
TextEditingController _passController= TextEditingController();
class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  child: Image.asset("assets/bg.png")),
              Padding(
                padding:  EdgeInsets.only(left: screenWidth*0.03, right:  screenWidth*0.03),
                child: SingleChildScrollView(
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      SizedBox(height: screenHeight*0.20),
                      Padding(padding:  EdgeInsets.only(left: screenWidth*0.02,top: screenWidth*0.02, bottom: screenWidth*0.01),
                          child: Text("Email", style: TextStyle(fontSize: screenWidth*0.04,
                              fontWeight: FontWeight.bold,color: Colors.blueGrey))),
                      CustomTextField(
                          prefixIcon: Icons.email,
                          controller: _emailController,
                          hintText: "Enter your email",
                          obsecureValue: false),
                      Padding(padding:  EdgeInsets.only(left: screenWidth*0.02,top: screenWidth*0.05, bottom: screenWidth*0.01),
                          child: Text("Password", style: TextStyle(fontSize: screenWidth*0.04,
                              fontWeight: FontWeight.bold,color: Colors.blueGrey))),
                      CustomTextField(
                          prefixIcon: Icons.lock,
                          controller: _passController,
                          hintText: "Enter password",
                          obsecureValue: true),
                      SizedBox(height: screenHeight*0.04),
                      InkWell(onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavigation()));
                      },
                        child: CustomContainer(
                            text: "Login"),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
    ));
  }
}
