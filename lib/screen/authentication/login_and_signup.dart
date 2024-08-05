import 'package:flutter/material.dart';
import 'package:social/custom_widgets/custom_container.dart';
import 'package:social/screen/authentication/login_page.dart';
import 'package:social/screen/authentication/sign_up.dart';
class LoginAndSignup extends StatefulWidget {
  const LoginAndSignup({Key? key}) : super(key: key);

  @override
  _LoginAndSignupState createState() => _LoginAndSignupState();
}
class _LoginAndSignupState extends State<LoginAndSignup> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
          body: Padding(
            padding:  EdgeInsets.all(screenWidth*0.03),
            child: Column(children: [
                SizedBox(height: screenHeight*0.15),
                Container(
                  width: screenWidth,
                  height: screenHeight*0.35,
                  child: Image.asset("assets/digital.png")),

              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));},
                child: CustomContainer(
                    text: "Login")),
              SizedBox(height: screenHeight*0.02),
              InkWell(
                onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));},
                child: CustomContainer(
                    text: "Sign up")),

              ],
            ),
          )
        )
    );
  }
}
