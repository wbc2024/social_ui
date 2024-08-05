import 'package:flutter/material.dart';
import 'package:social/custom_widgets/custom_container.dart';
import 'package:social/custom_widgets/custom_navigator.dart';
import 'package:social/custom_widgets/custom_text_field.dart';
import 'package:social/screen/home_page/home_page.dart';
class SimplePost extends StatefulWidget {
  const SimplePost({Key? key}) : super(key: key);

  @override
  _SimplePostState createState() => _SimplePostState();
}

class _SimplePostState extends State<SimplePost> {
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
                        hintText: "post")),
                  SizedBox(height: screenHeight*0.05),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: allColor.containerColor)
                    ),
                    width: screenWidth,
                    height: screenHeight*0.20,
                    child: Center(child: Text('Image',style: TextStyle(fontSize: screenWidth*0.04),))),
                  SizedBox(height: screenHeight*0.05),
                  InkWell(onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                  },
                    child: CustomContainer(
                        text: "Submit Post"),
                  )

                ],
              ),
            ),
          ),
        ));
  }
}
