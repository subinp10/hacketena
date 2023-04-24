import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';



class first extends StatefulWidget {

  @override
  State<first> createState() => _firstState();

}

class _firstState extends State<first> {


  @override

    String location="",country="",state="";
    final controller= TextEditingController();
  getlocation(String location){
    this.location=location;
    print('$location');
  }
  getcountry(String country){
    this.country=country;
  }
  getstate(String state){
    this.state=state;
  }
  Future createdata() async{
    print("data is created");

  }

  writedata(){
    print("data is written");
  }
   updatedata(){
     print("data is updated");
   }
   readdata(){
     print("data is readen");
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text('Trip Planner'),),
    body: Column(children: <Widget>[
      Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration:InputDecoration(
          labelText: "location",
          fillColor: Colors.white,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color:Colors.lightBlue,width: 2.0),


          )
        ),onChanged: (String location){
                 getlocation(location);
      },
      ),
    ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(controller:controller,
          decoration:InputDecoration(
              labelText: "country",
              fillColor: Colors.white,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color:Colors.lightBlue,width: 2.0),


              )
          ),onChanged: (String country){
                getcountry(country);
        },
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          decoration:InputDecoration(
              labelText: "state",
              fillColor: Colors.white,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color:Colors.lightBlue,width: 2.0),


              )
          ),onChanged: (String state){
                   getstate(state);
        },
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          ElevatedButton(onPressed:(){
            createdata();
          }, child:Text("create",)),
          ElevatedButton(onPressed:(){
            writedata();
          }, child:Text("write",)),
          ElevatedButton(onPressed:(){
            updatedata();
          }, child:Text("update",)),
          ElevatedButton(onPressed:(){
            readdata();
          }, child:Text("read",)),

        ],),
      )
    ],
    ),

    );
  }

}
