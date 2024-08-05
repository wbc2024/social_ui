import 'package:flutter/material.dart';
import 'package:social/custom_widgets/custom_text_field.dart';
import 'package:social/screen/post/job_post.dart';
import 'package:social/screen/post/sell_post.dart';
import 'package:social/screen/post/simple_post.dart';
class Post extends StatefulWidget {
  const Post({Key? key}) : super(key: key);

  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: 
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Text("Post", style: TextStyle(fontSize: screenWidth*0.05)),
                        Spacer(),
                        Text("Sell Post", style: TextStyle(fontSize: screenWidth*0.05)),
                        Spacer(),
                        Text("Job Post", style: TextStyle(fontSize: screenWidth*0.05))])),

                ],
              ),
            ),
          ),
        ));
  }
}
