import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'my_drawer.dart';

class HomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title:Text("Nestle-"),  ),
    body:Center(
     child: Container(
     child: GridView.count(

       crossAxisSpacing: 10,

       mainAxisSpacing: 10,

       crossAxisCount: 2,

       children:<Widget> [

         Container(
     child:Coulumb(

     leading:Icon(
       CupertinoIcons.home,
       color: Colors.white,
       child:Text("chats",style: TextStyle(color: Colors.black),  )

     ),
         )

         ),

         Container(
             child:L(

               leading:Icon(
                   CupertinoIcons.home,
                   color: Colors.white,
                   child:Text("Rezept/Express",style: TextStyle(color: Colors.black),  )

               ),
             )

         ),


       ],


     ),


     ),

),

      drawer:MYDrawer(),

);


  }
}
