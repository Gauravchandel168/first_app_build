import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'my_drawer.dart';

class HomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

   // var arrColors=[Colors.blue,
     // Colors.blue,
      //Colors.blue,
     // Colors.blue,];





    return Scaffold(
    appBar: AppBar(
    title:Text("Nestle-")  ),
    body: Padding( padding: const EdgeInsets.all(80.0),
      child: GridView.builder(  itemBuilder: (context, index) {
        return Container(color: Colors.blue,);

      },  itemCount: 4, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,  mainAxisSpacing: 11,
        crossAxisSpacing: 11,)


       /* children :[

        Card(

        elevation: 5,
        child:Padding(  padding:const EdgeInsets.all(8.0),

          child:Column(
              children :[Icon(

                Icons.chat,
                color: Colors.blue,
              ),


                Text("Chats")
              ]),

        ),
      ),


       ] ,)

      )
      ); */








      ),
    ),
      drawer:MYDrawer(),

    );



  }
}
