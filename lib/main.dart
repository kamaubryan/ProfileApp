import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profile_app/about.dart';

void main() {
  runApp( GetMaterialApp(
    debugShowCheckedModeBanner: false,
      home: Mainpage()


  ));
}
class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.white,

        title: Center(
          child: const Text('My Profile' , style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700, color:  Colors.black), ),
        ),
        actions: [

          InkWell(
            onTap: (){
              Get.to(AboutProfile());
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 18.0),
              child: Icon(Icons.info),
            ),
          )
        ],

      ),
      body: SizedBox(
        child: Column(
children: [
  Container(
    padding: const EdgeInsets.only(left: 20,right:20 ),
    alignment: Alignment.center,
    child: Column(
      children: [
        CircleAvatar(
          radius: 100,
          backgroundImage: NetworkImage('https://wallpapers.com/images/featured/monkey-d-luffy-pictures-0cp6bwz93q5udc63.jpg'),
        ),
        SizedBox(height: 15,),
        Text('Kamau Brian' , style: TextStyle(fontWeight: FontWeight.w800, fontSize: 40, color: Colors.black,)),
        SizedBox(height: 10,),
       Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
                    Icon(Icons.developer_mode, size: 25, color: Colors.indigoAccent,),
           SizedBox(width: 4,),
           Text('SoftWare Developer' , style: TextStyle(fontSize: 25 ,fontWeight: FontWeight.w600, color: Colors.indigoAccent ), ),
         ],
       )
      ],
    ),

  ),
  Expanded(
    child: Container(
      
      padding: const EdgeInsets.all(40),
    
      child: Column(
        
        children: [
         const Text('My Skills', style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold, color: Colors.brown, ),),
          SizedBox( height: 340,
            child: ListView(
              children: const [
                ListTile(
                  leading: Icon(Icons.developer_mode),
                  title: Text("Web Development "),
                ),
                ListTile(
                  leading: Icon(Icons.draw),
                  title: Text("UI/UX"),),
                ListTile(
                  leading: Icon(Icons.work),
                  title: Text("Agile methodology"),),
                ListTile(
                  leading: Icon(Icons.control_point),
                  title: Text("Version Control using Git"),),
                ListTile(
                  leading: Icon(Icons.phone_android),
                  title: Text("Android development"),)
              ],
            ),
          )
        ],
    
    
      ),
    ),
  )
],

        ),

      )

    );
  }
}
