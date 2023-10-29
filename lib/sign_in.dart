import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';


import 'bottem.dart';
import 'sign_up.dart';
class signin extends StatefulWidget {
  const signin({super.key});

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  var formkey=GlobalKey<FormState>();
  var are=TextEditingController();
  bool pass=false;
  var are2=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Form(
          key: formkey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 100,
                      top: 150),
                  child: Row(
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
                SizedBox(
                  height: 40,
                ),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        height: 40,

                        decoration: BoxDecoration(

                            color: Colors.orangeAccent,
                            borderRadius: BorderRadius.circular(10)),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 26,top: 10),
                      child: TextFormField(
                        controller: are,
                        keyboardType:TextInputType.text ,
                        decoration: InputDecoration(
                          border:InputBorder.none,
                            hintText: "Email",
                            hintStyle:TextStyle(fontSize: 18,fontWeight:FontWeight.normal),



                        ),
                        validator:(value){
                          if(value!.isEmpty){
                            return "Please Enter Your Email";
                          }else{
                            return "Please Enter a Valid Email";
                          }
                          return null ;
                        },
                        onSaved: (value){

                        },


                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 13,left: 15,right: 15),
                      child: Container(
                        height: 40,

                        decoration: BoxDecoration(

                            color: Colors.orangeAccent,
                            borderRadius: BorderRadius.circular(10)),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 7,left: 25,right: 15),
                      child: TextFormField(
                        obscureText: !pass,
                        obscuringCharacter: ".",
                        controller: are2,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                            suffixIcon: IconButton(
                              onPressed: (){
                                setState(() {
                                  pass=!pass;
                                });
                              },
                              icon: Icon(pass?Icons.visibility:Icons.visibility_off),

                            ),
                            hintText: "Password",hintStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.normal)
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 23,left: 15,right: 15,bottom: 23),
                  child: InkWell(
                    onTap: (){
                      if(formkey.currentState!.validate()){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>bottem()));
                      }else{
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("All fields requird")));

                      }
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.orange[700],
                      ),
                      child: Text("Sign In",style: TextStyle(fontSize: 20,color: Colors.white)),
                    ),
                  ),
                ),
                Text("Login with",style: TextStyle(fontSize: 18),),
                Padding(
                  padding: const EdgeInsets.only(top: 20,left: 135),
                  child: Row(children: [
                    InkWell(
                        onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>bottem()));},
                        child: Icon(Icons.facebook,color: Colors.blue,size: 30,)),
                    InkWell(
                      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>bottem()));},
                      child: Container(
                        height: 35,
                          child: Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3NVzJKLW70h1vLrM13OPIUkr0joCcHtE31G8nZiI9VoSx_Ehtr8LAENPUHq-PLxBpAMk&usqp=CAU"))),
                    ),
                    InkWell(
                      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>bottem()));},
                      child: Container(
                        height: 30,
                          child: Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIPIqgXlHyBd9BPkg-1lO6oMG91wNMrBIwdQ&usqp=CAU"))),
                    )
                  ],),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 23,left: 15,right: 15,bottom: 23),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>signup()));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 40,
                      decoration: BoxDecoration(
                      border: Border.all(),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Text("Sign Up",style: TextStyle(fontSize: 20,color: Colors.orange[700])),
                    ),
                  ),
                ),








              ],
            ),
          ),
        ),
      ),
    );
  }
}
