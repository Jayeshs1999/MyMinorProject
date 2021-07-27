import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_project/pages/menubar.dart';

class addaddress extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return addaddressPage();
  }
}
class addaddressPage extends State<addaddress>{
  bool pressed=false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: Text('Add Address',style: TextStyle(fontFamily: "times new roman"),),
            leading: IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.arrow_back)),
          ),
          body:Container(
            child: ListView(
              children: [
                 Padding(
                  padding: const EdgeInsets.only(left:20.0,right: 20,top: 20),
                  child:  TextFormField(
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        hintText: "Full Name",
                        hintStyle: TextStyle(color:Colors.black54),

                        // enabledBorder: OutlineInputBorder(
                        //   //    borderRadius: BorderRadius.all(Radius.circular(.0,)),
                        //     borderSide: BorderSide(color: Colors.white,width: 2)
                        // ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4.0)),
                            borderSide: BorderSide(color: Colors.green,width: 2)
                        )
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0,left: 20,right: 20),
                  child:  TextFormField(
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        hintText: "House no/Building name*",
                        hintStyle: TextStyle(color:Colors.black54),
                        // enabledBorder: OutlineInputBorder(
                        //   //     borderRadius: BorderRadius.all(Radius.circular(30.0,)),
                        //     borderSide: BorderSide(color: Colors.white,width: 2)
                        // ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4.0)),
                            borderSide: BorderSide(color: Colors.green,width: 2)
                        )
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 20.0,left: 20,right: 20),
                  child:  TextFormField(
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        labelText: "Location",
                        hintText: "ISB Campus,Gachibowli",
                        hintStyle: TextStyle(color:Colors.black,fontSize: 20,fontFamily: "times new roman"),
                        // enabledBorder: OutlineInputBorder(
                        //   //     borderRadius: BorderRadius.all(Radius.circular(30.0,)),
                        //     borderSide: BorderSide(color: Colors.white,width: 2)
                        // ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4.0)),
                            borderSide: BorderSide(color: Colors.green,width: 2)
                        )
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 10.0,left: 20,right: 20),
                  child:  TextFormField(
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        labelText: "City",
                        hintText: "Hydrabad",
                        hintStyle: TextStyle(color:Colors.black,fontSize: 20,fontFamily: "times new roman"),
                        // enabledBorder: OutlineInputBorder(
                        //   //     borderRadius: BorderRadius.all(Radius.circular(30.0,)),
                        //     borderSide: BorderSide(color: Colors.white,width: 2)
                        // ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4.0)),
                            borderSide: BorderSide(color: Colors.green,width: 2)
                        )
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 20.0,left: 20,right: 20),
                  child:  TextFormField(
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        labelText: "Pincode",
                        hintText: "424204",
                        hintStyle: TextStyle(color:Colors.black,fontSize: 20,fontFamily: "times new roman"),
                        // enabledBorder: OutlineInputBorder(
                        //   //     borderRadius: BorderRadius.all(Radius.circular(30.0,)),
                        //     borderSide: BorderSide(color: Colors.white,width: 2)
                        // ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4.0)),
                            borderSide: BorderSide(color: Colors.green,width: 2)
                        )
                    ),
                  ),
                ),

                Padding(
                    padding:EdgeInsets.only(left: 30,right: 30,top: 120),
                    child:SizedBox(

                      height: 50,
                      child: RaisedButton(onPressed: (){

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