import 'package:flutter/material.dart';
import 'package:social/helper/all_color/color.dart';

class CustomTextField extends StatefulWidget {
  TextEditingController controller;
  String hintText;
  bool obsecureValue;
  var prefixIcon;
  CustomTextField({Key? key,
    required this.controller,
    required this.hintText,
    required this.obsecureValue,
    required this.prefixIcon,
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}
AllColor allColor= AllColor();
String passStore="";
class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight= MediaQuery.of(context).size.height;
    final double screenWidth= MediaQuery.of(context).size.width;
    return TextFormField(
      validator: (value){
        bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
            .hasMatch(value!);
        if(value.isEmpty){
          return "This field is empty!";
        }
        if(widget.hintText=="Email"){
          if(!emailValid)
            return "Email format is not correct!";
        }
        if(widget.hintText=="Password")
        {
          passStore=value;
          if(value.length<6)
            return "Password must be atleast 6 char!";
        }
        if(widget.hintText=="Confirm Password"){
          if(passStore!=value){
            return "Password didn't match!";
          }
        }
      },
      obscureText: widget.obsecureValue,
      // cursorColor: allColor.textFieldColor,
      decoration: InputDecoration(
        prefixIcon: Icon(widget.prefixIcon, color: allColor.containerColor,size: 25),
        filled: true,
        fillColor: allColor.textFieldColor,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: allColor.containerColor)),
        focusColor: allColor.containerColor,
        contentPadding: EdgeInsets.fromLTRB(1, 1, 1, 0),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: allColor.containerColor),
          borderRadius: BorderRadius.circular(10)),
        hintText: widget.hintText,
      ),
    );
  }
}
