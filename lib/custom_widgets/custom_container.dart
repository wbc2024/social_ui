import 'package:flutter/material.dart';
import 'package:social/custom_widgets/custom_text_field.dart';
class CustomContainer extends StatefulWidget {
  String text;
   CustomContainer({Key? key,
     required this.text
   }) : super(key: key);

  @override
  _CustomContainerState createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: screenHeight*0.05,
      width: screenWidth,
      decoration: BoxDecoration(
        color: allColor.containerColor,
        borderRadius: BorderRadius.circular(10)),
      child: Center(child: Text(widget.text, style: TextStyle(fontSize: screenWidth*0.05,
            color: Colors.white)),
      ),
    );
  }
}
