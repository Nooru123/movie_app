import 'package:flutter/material.dart';
import 'package:movie_app/profileadd.dart';
class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Who's Watching",style: TextStyle(fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.orange[700]),),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 130,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>profileadd()));

                      },
                      child: Card(
                        child: Container(

                          height: 120,
                          width: 110,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqZZYSsnncqDhroX4Ud9rgHCxpDeyLSN5PdG71BuDAk-ulL4CQCFtjL4lKVH26UIW9EOo&usqp=CAU")
                              )
                          ),



                        ),
                      ),
                    )

                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>profileadd()));
                      },
                      child: Card(
                        child: Container(

                          height: 120,
                          width: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.orange,
                          ),

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.add,color: Colors.white,size: 28,),
                              Text("Add Profile",style: TextStyle(color: Colors.white,),)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>profileadd()));

                      },
                      child: Card(
                        child: Container(

                          height: 120,
                          width: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.orange,
                          ),

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.add,color: Colors.white,size: 28,),
                              Text("Add Profile",style: TextStyle(color: Colors.white,),)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text("Tom Alise",style: TextStyle(color: Colors.orange[600]),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25,left: 10),
              child: Text("My account",style: TextStyle(fontSize: 18,color: Colors.orange[700]),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25,left: 10),
              child: Text("Notifications",style: TextStyle(fontSize: 18,color: Colors.orange[700]),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25,left: 10),
              child: Text("Settings",style: TextStyle(fontSize: 18,color: Colors.orange[700]),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25,left: 10),
              child: Text("Apprarance",style: TextStyle(fontSize: 18,color: Colors.orange[700]),),
            ),
          ],
        ),
      ),

    );
  }
}
