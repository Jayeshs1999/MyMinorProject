

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_project/pages/login.dart';
import 'package:my_project/pages/register.dart';


void main() => runApp(MyApp());




class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.lightGreenAccent,
      home: Scaffold(

          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text('Login/Register',style: TextStyle(fontFamily: "times new roman"),

            ),
          ),
          body:Builder(builder: (context)=>
          Container(
            height: 1000,
              width: 500,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("images/back.jpg"),
                      fit: BoxFit.cover
                  )
              ),
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right:100.0,left: 100.0,top:70),
                    child: Image.asset("images/go.png"),
                  ),

                Padding(
                  padding:EdgeInsets.only(left: 20 ,right: 20,top: 50),

                  child:RaisedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return login();
                    }));
                },
                    shape: new RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0)
                    ),
                    elevation: 5,
                    //color: Colors.lightBlueAccent,
                  child: Text("LOGIN",style: TextStyle(fontFamily: "times new roman",fontSize: 20,color: Colors.deepPurple),),
                
                )),
                  Padding(
                      padding:EdgeInsets.only(left: 20 ,right: 20,top: 5),
                      child:RaisedButton(onPressed: (){

                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return register();
                        }));

                      },
                        shape: new RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0)
                        ),
                        elevation: 5,
                        color: Colors.lightBlueAccent,
                        child: Text("REGISTER",style: TextStyle(fontFamily: "times new roman",fontSize: 20,color: Colors.white),),
                      ))
                ],
              ),

          )
      ),
    ));
  }
}

