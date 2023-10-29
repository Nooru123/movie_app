import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
class profileadd extends StatefulWidget {
  @override
  State<profileadd> createState() => _profileaddState();
}

class _profileaddState extends State<profileadd> {
  File? _imageFile;
  Future<void>_pickImage(ImageSource source) async{
  final pickedImage = await ImagePicker ().pickImage(source: source);

  setState(() {
    if (pickedImage != null){
      _imageFile = File (pickedImage.path);
    }else{
      _imageFile ==
    null;
    }
  });
  }
  var are=TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget> [
          Padding(
            padding: const EdgeInsets.only(top: 20,left: 10),
            child: Text("profile",style: TextStyle(color: Colors.black12,fontWeight: FontWeight.bold,fontSize: 20),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.centerLeft,
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(

                border: Border.all(color: Colors.blueAccent ),

              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Add Profile',style: TextStyle(
                  fontWeight: FontWeight.bold,color: Colors.orange[800]
                ),),
              ),
            ),
          ),
          Stack(
            children: [

              Padding(
                padding: const EdgeInsets.only(left: 120,top: 100),
                child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                        boxShadow:[BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          offset: Offset(3,3),
                        ),] ,
                        color: Colors.orange[400]

                    ),

                    child: Icon(CupertinoIcons.person_alt_circle,color: Colors.white,size: 70,)

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80,left: 245),
                child: IconButton(onPressed:()=>_pickImage(ImageSource.gallery), icon: Icon(CupertinoIcons.pencil_circle_fill,size: 25,color: Colors.orange[700],),
                ),
              ),

            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 110,top: 5,),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Container(
                    alignment: Alignment.center,
                    height: 40,

                    width:170,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.orange),


                    ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20, ),
                  child: TextField(
                    controller: are,
                    decoration: InputDecoration(
                      border: InputBorder.none,


                      hintText: "Enter Your Name",

                    ),

                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 110,top: 5,),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Container(
                    alignment: Alignment.center,
                    height: 40,

                    width:170,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.orange,)

                    ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20, ),
                  child: TextField(
                    controller: are,
                    decoration: InputDecoration(
                      border: InputBorder.none,


                      hintText: "Enter Your Name",

                    ),

                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 110,top: 10),
            child: Container(
              alignment: Alignment.center,
              height: 40,
              width: 170,
              decoration: BoxDecoration(
                  boxShadow:[BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    offset: Offset(3,3),
                  ),] ,
                borderRadius: BorderRadius.circular(10),
                color: Colors.orange[700]
              ),
              child: Text("Add",style: TextStyle(color: Colors.white,fontSize: 18),),
            ),
          ),





        ],
      ),
    );
  }
}
