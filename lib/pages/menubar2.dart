import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'account.dart';

class menuBar2 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return menuBarPage2();
  }
}
class menuBarPage2 extends State<menuBar2> {
  bool pressed = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          drawer: DrawerMenu(),
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text('Register',style: TextStyle(fontFamily: "times new roman"),

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
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return account();
                  }));
                },
              ),
            ),
            decoration: BoxDecoration(
                color: Colors.green

            ),
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text("Refer a Friend",style: TextStyle(fontFamily: "times new roman"),),
          ),

          ListTile(
            leading: Icon(Icons.list_rounded),
            title: Text("Purchase History",style: TextStyle(fontFamily: "times new roman"),),
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
          ),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text("Tutorial",style: TextStyle(fontFamily: "times new roman"),),
          ),

        ],
      ),
    );
  }

}