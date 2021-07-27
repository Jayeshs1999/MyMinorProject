import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'menubar2.dart';

class menuBar extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return menuBarPage();
  }
}
class menuBarPage extends State<menuBar> {
  bool pressed = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: DrawerMenu(),
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text('Account',style: TextStyle(fontFamily: "times new roman"),

            ),
          ),
          body: Container(
            child: ListView(
              children: [

              ],
            ),
          )
      ),

    );
  }
}

class DrawerMenu extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return DrawerMenuPage();
  }
}
class DrawerMenuPage extends State<DrawerMenu>{
  @override
  Widget build(BuildContext context) {
     return Drawer(
       child: ListView(
         children: [
           DrawerHeader(
               child: Center(
                 child: ListTile(
                   leading: Icon(Icons.person_pin,color: Colors.white,size: 40,),
                   title: Text("8888585093",style: TextStyle(color: Colors.white,fontFamily: "times new roman",fontSize: 20),),
                   trailing: Icon(Icons.keyboard_arrow_right,color: Colors.white,size: 30,),
                   onTap: (){

                   },
                 ),
               ),
             decoration: BoxDecoration(
               color: Colors.green

             ),
           ),
           ListTile(
             leading: Icon(Icons.list_rounded),
             title: Text("Ordered History",style: TextStyle(fontFamily: "times new roman"),),
             onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context){
                 return menuBar2( );
               }));
             },
           ),
           ListTile(
             leading: Icon(Icons.call),
             title: Text("Help & Support",style: TextStyle(fontFamily: "times new roman"),),
           ),ListTile(
             leading: Icon(Icons.update),
             title: Text("Updates",style: TextStyle(fontFamily: "times new roman"),),
           ),
           ListTile(
             leading: Icon(Icons.logout),
             title: Text("Logout",style: TextStyle(fontFamily: "times new roman"),),
             onTap: () => showDialog(context: context,
                   builder: (BuildContext context){
                 return AlertDialog(
                   title: new Text("Are you sure you want to logout ?",style: TextStyle(fontFamily: "times new roman"),),
                   actions: <Widget>[
                     new FlatButton(onPressed: (){
                       
                     },
                         child:Text("No",style: TextStyle(fontFamily: "times new roman"),)
                     ),
                     new FlatButton(onPressed: (){

                     },
                         child:Text("Yes,Logout",style: TextStyle(fontFamily: "times new roman"),)
                     )
                   ],


                 );

                   }
               ),
             
           )
         ],
       ),
     );
  }

}
