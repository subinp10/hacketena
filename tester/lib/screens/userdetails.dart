import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../chatscreen/HomeScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:io';


class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController dateController = TextEditingController();

 @override
 final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
 String username="",source="mumbai",destination="goa",date="22-02-2014",budget="5000";
 getsource(String source){
   this.source=source;
 }
 getdest(String destination) {
    this.destination = destination;
  }
 getdate(String date){
   this.date=date;
 }

 getbudget(String budget){
this.budget=budget;
 }
@override
  Future creatdata() async{

  Map <String,dynamic> userdetails={
    'source':source,
    'destination':destination,
    'date':date,
    'budget':budget,
    'user':_auth.currentUser!.displayName
  };
  await _firestore
     .collection('userdetails')
     .doc('myid')
     .collection('details')
     .add(userdetails);


  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(children: [
            SizedBox(
              height: 80,
            ),
            Text("SOURCE:",style:TextStyle(fontSize: 16),),
            SizedBox(height: 2,),
            TextFormField(decoration: InputDecoration(labelText: "Source",
                 border: OutlineInputBorder(
                 ),
                 ),
                 autovalidateMode: AutovalidateMode.onUserInteraction,
                 validator: (text) {
                 if (text == null || text.isEmpty) {
                    return 'Can\'t be empty';
                  }
                 return null;
                },onChanged: (String Source){
                   getsource(Source);
              },
                 ),
            SizedBox(height: 40,),
            Text("DESTINATION:",style: TextStyle(fontSize: 16),),
            TextFormField(decoration: InputDecoration(labelText: "destination",
                 border: OutlineInputBorder(),
                 ),onChanged: (String destination){getdest(destination);},
                autovalidateMode: AutovalidateMode.onUserInteraction,
                 validator: (text) {
                 if (text == null || text.isEmpty) {
                    return 'Can\'t be empty';
                  }
                 return null;
                },
                 ),
                 SizedBox(height: 40,),
                 Text("STARTING DATE:",style: TextStyle(fontSize: 16),),
                 TextFormField(decoration: InputDecoration(
                 icon: Icon(Icons.calendar_today),
                 ),
                 controller: dateController,
                 readOnly: true,  // when true user cannot edit text 
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                      context: context,
                       initialDate: DateTime.now(), //get today's date
                      firstDate: DateTime(2000), //DateTime.now() - not to allow to choose before today.
                      lastDate: DateTime(2101)
                  );
                  
                  if(pickedDate != null ){
                      print(pickedDate);  //get the picked date in the format => 2022-07-04 00:00:00.000
                      String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate); // format date in required form here we use yyyy-MM-dd that means time is removed
                      print(formattedDate); //formatted date output using intl package =>  2022-07-04
                        //You can format date as per your need
                      date=formattedDate;
                      setState(() {
                         dateController.text = formattedDate; //set foratted date to TextField value. 
                      });
                  }else{
                      print("Date is not selected");
                  }
                },
                 ),
                 SizedBox(height: 40,),
                 Text("BUDGET:",style: TextStyle(fontSize: 16),),
                 TextFormField(decoration: InputDecoration(
                 border: OutlineInputBorder(),
                 ),onChanged: (String budget){getbudget(budget);},
                 ),SizedBox(height: 50,),ElevatedButton(onPressed:creatdata, child:Text("crearte") ),

                 MaterialButton(onPressed:(){

                   Navigator.of(context).pushNamed('one');


                 },child: Text("SUBMIT",style:TextStyle(fontSize: 20),),
                 textColor:Colors.white,
                 height: 50,color: Colors.black26,),
                 ]),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}