import 'package:flutter/material.dart';
import 'package:social/custom_widgets/custom_text_field.dart';
import 'package:social/screen/bottom_navigaton/message.dart';
import 'package:social/screen/bottom_navigaton/notificatrion.dart';
import 'package:social/screen/home_page/home_page.dart';
import 'package:social/screen/post/simple_post.dart';
import 'package:social/screen/profile/profile.dart';
class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

final _pages = [
  HomePage(),
  Message(),
  SimplePost(),
  NotificationPage(),
  Profile(),


];
var _currentIndex= 0;
class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    double screenheight= MediaQuery.of(context).size.height;
    double screenwidth= MediaQuery.of(context).size.width;
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: allColor.containerColor,
        unselectedItemColor: Colors.grey,
        iconSize: 25,

        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black ),

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.notifications_active_outlined), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_rounded), label: ""),
        ],
        onTap: (index){
         setState(() {
           _currentIndex=index;
         });
        },
      ),
      body: _pages[_currentIndex],
    );
  }
}
