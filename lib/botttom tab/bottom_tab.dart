import 'package:calculator/botttom%20tab/chat.dart';
import 'package:calculator/botttom%20tab/notification.dart';
import 'package:calculator/botttom%20tab/profile.dart';
//import 'package:calculator/homepage/homepage.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class BottomTabpage extends StatefulWidget {
  const BottomTabpage({super.key});

  @override
  State<BottomTabpage> createState() => _BottomTabpageState();
}

class _BottomTabpageState extends State<BottomTabpage> {
int currenttab=0;
final List screens=[
  const Homepage(),
  const ChatPage(),
   const NotificationPage(),
  const Profile()
];

final PageStorageBucket bucket=PageStorageBucket();
Widget currebtScreen=const Homepage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      appBar: AppBar(title: const Text('Bottombar',style: TextStyle(color: Colors.black),),),
     
     body: PageStorage(
      bucket: bucket,
      child: currebtScreen),



     floatingActionButton: FloatingActionButton(onPressed: (){},
     child: const Icon(Icons.add,color: Colors.black,),),
     floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              MaterialButton(onPressed: (){
                setState(() {
                   currebtScreen=const Homepage();
                currenttab=0;
                });
               
              },
             minWidth: 40,
             child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Icon(Icons.home,
              color: currenttab==0? Colors.blue:null,),
               Text('homepage',style: TextStyle(
              color: currenttab==0? Colors.blue:null,
             ),)
             ],),
             ),
              MaterialButton(onPressed: (){
                setState(() {
                   currebtScreen=const ChatPage();
                currenttab=1;
                });
               
              },
             minWidth: 40,
             child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Icon(Icons.chat,
              color: currenttab==1? Colors.blue:null,),
              Text('Chat',
              style: TextStyle(
              color: currenttab==1? Colors.blue:null,
             ),)
             ],),
             ),
             ],
             
             ), 
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              MaterialButton(onPressed: (){
                setState(() {
                  currebtScreen=const NotificationPage();
                currenttab=2;
                });
                
              },
             minWidth: 40,
             child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
              Icon(Icons.home,
              color: currenttab==2? Colors.blue:null,),
              Text('Notification',
              style: TextStyle(
              color: currenttab==2? Colors.blue:null,
             ),)
             ],),
             ),
              MaterialButton(onPressed: (){
                setState(() {
                    currebtScreen=const Profile();
                currenttab=3;
                });
              
              },
             minWidth: 40,
             child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
              Icon(Icons.person,
              color: currenttab==3? Colors.blue:null,),
              Text('Profile',
              style: TextStyle(
              color: currenttab==3? Colors.blue:null,
             ),)
             ],),
             ),
             ],
             
             ), 
              
            ],)
          )
        


      ),
    );
  }
}