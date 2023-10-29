import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/profile.dart';

import 'download.dart';
import 'home.dart';
class bottem extends StatefulWidget {
  const bottem({super.key});

  @override
  State<bottem> createState() => _bottemState();
}

class _bottemState extends State<bottem> {

  var selectedIntex=0;

  List pages=[
    home(),
    download(),Text("noy"),Text("kim"),profile(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: pages.elementAt(selectedIntex),
      bottomNavigationBar:BottomNavigationBar(
        selectedItemColor: Colors.black,
        showUnselectedLabels: true,
        currentIndex: selectedIntex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,),backgroundColor: Colors.orange[700],label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.local_movies,),backgroundColor: Colors.orange[700],label: 'Movie'),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.tv_fill,),backgroundColor: Colors.orange[700],label: 'Tv Show'),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.arrow_down_to_line_alt,),backgroundColor: Colors.orange[700],label: 'Download'),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.person_crop_circle,),backgroundColor: Colors.orange[700],label: 'Profile'),

          
        ],
        onTap: (index){
          setState(() {
            selectedIntex=index;
          });

        },

      ) ,

    );
  }
}
