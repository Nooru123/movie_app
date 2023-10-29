

import 'package:flutter/material.dart';

import 'sign_in.dart';


class splash_screen extends StatelessWidget {
  const splash_screen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 4),() {
      if (context !=null && context.mounted){
        Navigator.push(context,  MaterialPageRoute(builder: (context)=>signin()));
      }

    });
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        height: double.infinity,
        width: double.infinity,
        color: Colors.red,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
              width: 50,
              child: Image(
                  image: NetworkImage("https://cdn.pixabay.com/photo/2015/12/09/22/24/filmklappe-1085692_640.png")),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Hot Time",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
            ),

          ],
        ),
      ),

    );
  }
}
