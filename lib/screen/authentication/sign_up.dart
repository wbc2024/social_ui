import 'package:flutter/material.dart';
import 'package:social/custom_widgets/custom_container.dart';
import 'package:social/custom_widgets/custom_text_field.dart';
import 'package:social/screen/bottom_navigaton/bottom_navigation_pages.dart';
class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}
TextEditingController _firstNameController= TextEditingController();
TextEditingController _lasttNameController= TextEditingController();
TextEditingController _phoneNumberController= TextEditingController();
TextEditingController _emailController= TextEditingController();
TextEditingController _passController= TextEditingController();
TextEditingController _referralCodeController= TextEditingController();
class _SignUpState extends State<SignUp> {
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
                    Padding(padding:  EdgeInsets.only(left: screenWidth*0.02,top: screenWidth*0.02, bottom: screenWidth*0.01),
                        child: Text("First Name", style: TextStyle(fontSize: screenWidth*0.04,
                            fontWeight: FontWeight.bold, color: Colors.blueGrey))),
                    CustomTextField(
                        prefixIcon: Icons.account_box,
                        controller: _firstNameController,
                        hintText: "Enter first name",
                        obsecureValue: false),
                    Padding(padding:  EdgeInsets.only(left: screenWidth*0.02,top: screenWidth*0.04, bottom: screenWidth*0.01),
                        child: Text("Last Name", style: TextStyle(fontSize: screenWidth*0.04,
                            fontWeight: FontWeight.bold, color: Colors.blueGrey))),
                    CustomTextField(
                        prefixIcon: Icons.account_box,
                        controller: _lasttNameController,
                        hintText: "Enter last name",
                        obsecureValue: false),
                    Padding(padding:  EdgeInsets.only(left: screenWidth*0.02,top: screenWidth*0.04, bottom: screenWidth*0.01),
                        child: Text("Phone", style: TextStyle(fontSize: screenWidth*0.04,
                            fontWeight: FontWeight.bold,color: Colors.blueGrey))),
                    CustomTextField(
                        prefixIcon: Icons.call,
                        controller: _phoneNumberController,
                        hintText: "Enter phone number",
                        obsecureValue: false),
                    Padding(padding:  EdgeInsets.only(left: screenWidth*0.02,top: screenWidth*0.04, bottom: screenWidth*0.01),
                        child: Text("Email", style: TextStyle(fontSize: screenWidth*0.04,
                            fontWeight: FontWeight.bold,color: Colors.blueGrey))),
                    CustomTextField(
                        prefixIcon: Icons.email,
                        controller: _emailController,
                        hintText: "Enter your email",
                        obsecureValue: false),
                    Padding(padding:  EdgeInsets.only(left: screenWidth*0.02,top: screenWidth*0.04, bottom: screenWidth*0.01),
                        child: Text("Password", style: TextStyle(fontSize: screenWidth*0.04,
                            fontWeight: FontWeight.bold,color: Colors.blueGrey))),
                    CustomTextField(
                        prefixIcon: Icons.lock,
                        controller: _passController,
                        hintText: "Enter password",
                        obsecureValue: false),
                    Padding(padding:  EdgeInsets.only(left: screenWidth*0.02,top: screenWidth*0.04, bottom: screenWidth*0.01),
                        child: Text("Referral Code", style: TextStyle(fontSize: screenWidth*0.04,
                            fontWeight: FontWeight.bold,color: Colors.blueGrey))),
                    CustomTextField(
                        prefixIcon: Icons.code,
                        controller: _referralCodeController,
                        hintText: "Enter code",
                        obsecureValue: false),
                    SizedBox(height: screenHeight*0.04),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all()
                      ),
                      height: screenHeight*0.25,
                      width: screenWidth,
                      child: Center(
                        child: Text("NID Front side"))),
                    SizedBox(height: screenHeight*0.04),
                    Container(
                        decoration: BoxDecoration(
                            border: Border.all()
                        ),
                        height: screenHeight*0.25,
                        width: screenWidth,
                        child: Center(
                            child: Text("NID Back side"))),
                    SizedBox(height: screenHeight*0.04),

                    InkWell(onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavigation()));
                    },
                      child: CustomContainer(
                          text: "Sign Up"),
                    ),
                    SizedBox(height: screenHeight*0.10),
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
