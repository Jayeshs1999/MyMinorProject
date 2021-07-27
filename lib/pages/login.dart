import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_project/pages/menubar.dart';

class login extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return loginPage();
  }
}
class loginPage extends State<login>{
  bool pressed=false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text('Login',style: TextStyle(fontFamily: "times new roman"),
            ),
          ),
        body:Container(
          child: ListView(
            children: [
              IconButton(onPressed: (){
                Navigator.pop(context);
              }, icon: Icon(Icons.close),
                alignment: Alignment.topLeft,
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Image.asset("images/login.jpg"),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child:  TextFormField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                      hintText: "EMAIL",
                      prefixIcon: Icon(Icons.mail),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0,)),
                      borderSide: BorderSide(color: Colors.black87,width: 2)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
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
                      hintText: "PASSWORD",
                      prefixIcon: Icon(Icons.lock),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30.0,)),
                          borderSide: BorderSide(color: Colors.black87,width: 2)
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                          borderSide: BorderSide(color: Colors.green,width: 2)
                      )
                  ),
                ),
              ),
              Padding(
                  padding:EdgeInsets.only(left: 15,right: 15,top: 70),
                  child:SizedBox(

                    height: 50,
                    child: RaisedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return menuBar();
                      }));


                    },
                      shape: new RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)
                      ),
                      elevation: 8,
                      color: Colors.green,
                      child: Text("LOGIN",
                        style: TextStyle(fontFamily: "times new roman",
                            fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                    ),
                  ))
            ],
          ),
        )
      ),

    );
  }

}