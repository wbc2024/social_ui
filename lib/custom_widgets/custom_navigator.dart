import 'package:flutter/material.dart';
import 'package:social/screen/post/job_post.dart';
import 'package:social/screen/post/sell_post.dart';
import 'package:social/screen/post/simple_post.dart';

class CustomNavigator extends StatefulWidget {
  const CustomNavigator({Key? key}) : super(key: key);

  @override
  _CustomNavigatorState createState() => _CustomNavigatorState();
}

class _CustomNavigatorState extends State<CustomNavigator> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                  children: [
                    InkWell(onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SimplePost()));
                    },
                        child: Text("Post", style: TextStyle(fontSize: screenWidth*0.05))),
                    Spacer(),
                    InkWell(onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SellPost()));
                    },
                        child: Text("Sell Post", style: TextStyle(fontSize: screenWidth*0.05))),
                    Spacer(),
                    InkWell(onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>JobPost()));
                    },
                        child: Text("Job Post", style: TextStyle(fontSize: screenWidth*0.05))),


                    ])),

        ],
      ),
    );
  }
}
