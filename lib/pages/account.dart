import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_project/pages/menubar.dart';

import 'addaddress.dart';

class account extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return accountInfo();
  }
}
class accountInfo extends State<account>{
  bool pressed=false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: Text('Account',style: TextStyle(fontFamily: "times new roman"),),
            leading: IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.arrow_back)),
          ),
          body:Container(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:30.0,left: 30,right: 30,bottom: 4),
                  child: Icon(Icons.person_pin,size: 100,color: Colors.green,),
                ),
                Text("8888585093",textAlign: TextAlign.center,style: TextStyle(fontFamily: "times new roman",fontSize: 20),),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child:  TextFormField(
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        hintText: "Your Name",
                        hintStyle: TextStyle(color:Colors.black54),
                        prefixIcon: Icon(Icons.person),
                        suffixIcon: Icon(Icons.drive_file_rename_outline_outlined),
                        enabledBorder: OutlineInputBorder(
                        //    borderRadius: BorderRadius.all(Radius.circular(.0,)),
                            borderSide: BorderSide(color: Colors.white,width: 2)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20.0)),
                            borderSide: BorderSide(color: Colors.green,width: 2)
                        )
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child:  TextFormField(
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        hintText: "Email",
                        hintStyle: TextStyle(color:Colors.black54),
                        prefixIcon: Icon(Icons.mail),
                        suffixIcon: Icon(Icons.drive_file_rename_outline_outlined),
                        enabledBorder: OutlineInputBorder(
                       //     borderRadius: BorderRadius.all(Radius.circular(30.0,)),
                            borderSide: BorderSide(color: Colors.white,width: 2)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20.0)),
                            borderSide: BorderSide(color: Colors.green,width: 2)
                        )
                    ),
                  ),
                ),
                Padding(
                    padding:EdgeInsets.only(left: 30,right: 30,top: 70),
                    child:SizedBox(

                      height: 50,
                      child: RaisedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return addaddress();
                        }));


                      },
                        shape: new RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0,),
                          side: BorderSide(color: Colors.green,width: 2)

                        ),
                        elevation: 2,
                        color: Colors.white,

                        child: Text("ADD ADDRESS",
                          style: TextStyle(fontFamily: "times new roman",
                              fontSize: 20,color: Colors.green,fontWeight: FontWeight.bold),),

                      ),
                    ))
              ],
            ),
          )
      ),

    );
  }

}