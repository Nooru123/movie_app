import 'dart:core';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:anim_search_bar/anim_search_bar.dart';

import 'modelpage.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  var textController =TextEditingController();

  bool are= true;







 
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              color: Colors.orange[700],
              child:Stack(
                children: [

                  Padding(
                    padding: const EdgeInsets.only(left: 10,top: 27),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 40,
                          width: 40,
                          child: Image(
                              image: NetworkImage("https://cdn.pixabay.com/photo/2015/12/09/22/24/filmklappe-1085692_640.png")),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Hot Time",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28),),

                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: AnimSearchBar(
                      width: 330,

                      textController: textController,
                      color: Colors.orange[700],
                      textFieldColor: Colors.orange[700],

                      rtl: true,
                      onSuffixTap: () {
                        setState(() {
                          textController.clear();

                        });
                      }, onSubmitted: (String ) {  },
                    ),
                  ),


                ],
              )

            ),


            Column(
              children: [

                SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: CarouselSlider.builder(
                    itemCount: downloadmodel.length,

                      itemBuilder:(BuildContext context,  itemIndex,int pageViewIndex)  {
                        return InkWell(
                          onTap: (){},
                          child: Container(
                            height: 50,
                            width: double.infinity,
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Container(
                                    height: 300,
                                    width: double.infinity,
                                    decoration: BoxDecoration(

                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                            image: downloadmodel[itemIndex]['image']
                                        )
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),


                        );

                      },
                    options: CarouselOptions(
                        autoPlay: true,
                        aspectRatio: 1.3,
                        enlargeCenterPage: false,
                        viewportFraction: 1
                    ),
                      ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  height: 80,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 0.0),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.black,Colors.black12],begin: Alignment.centerLeft,end: Alignment.centerRight
                      )
                  ),

                  child: Column(
                    children: [
                      // Text(showmodel[itemIndex]['name'],style: TextStyle(color: Colors.red,fontSize: 26,fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),

              ],
            )


          ],
        ),
      ),
    );
  }
}
