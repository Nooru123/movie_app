import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'modelpage.dart';
class download extends StatefulWidget {
  const download({super.key});

  @override
  State<download> createState() => _downloadState();
}

class _downloadState extends State<download> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Downloads",style: TextStyle(color: Colors.orange[700],

        ),),


      ),
      body: SizedBox(
        height: 1000,
        child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemCount: downloadmodel.length,
            itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child:Stack(
                children: [
                  Container(
                    alignment: Alignment.topRight,

                    height: 140,
                    width: double.infinity,
                    decoration: BoxDecoration(


                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: downloadmodel[index]['image'],
                        )
                    ),
                    child: Icon(CupertinoIcons.ellipsis_vertical,size: 20,color: Colors.orange[700],),

                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:130 ),
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      color: Colors.white,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(CupertinoIcons.play_circle_fill,color: Colors.orange[700],),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(downloadmodel[index]['name'],),
                                Text(downloadmodel[index]['about'],style: TextStyle(fontSize: 8),),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );

            }),
      ),
    );
  }
}
