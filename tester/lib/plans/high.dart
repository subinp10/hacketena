import 'package:flutter/material.dart';
class high extends StatelessWidget{
  var $budget ="10000";
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('high-budget',style: TextStyle(color: Colors.white),)),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(2),
          child: ListView(
            children: [
              SizedBox(height: 30,),
              Container(decoration: BoxDecoration(borderRadius:BorderRadius.circular(20),border:Border.all(color: Colors.blue)),
              child: Center(child: Text("Total Budget : "+$budget,style: TextStyle(fontSize: 20),)),
              height: 40,
              ),
              SizedBox(height: 20,),
              Center(child: Text("Day 1",style: TextStyle(fontWeight: FontWeight.bold),)),
              SizedBox(height: 10,),
              ListTile(leading: CircleAvatar(radius: 35,child: Text("Train",style: TextStyle(fontSize: 13),)),title: Text("Kochi -> Mumbai"),subtitle: Text("8:45pm to 9:50pm"),trailing: Text("665 RS"),),
              SizedBox(height: 10,),
              Center(child: Text("Day 2",style: TextStyle(fontWeight: FontWeight.bold),)),
              SizedBox(height: 10,),
              ListTile(leading: CircleAvatar(radius: 35,child: Text("Hotel",style: TextStyle(fontSize: 13),)),title: Text("Thaj Hotel"),subtitle: Text("Mumbai"),trailing: Text("1500 RS"),),
              SizedBox(height: 10,),
              ListTile(leading: CircleAvatar(radius: 35,child: Text("Taxi",style: TextStyle(fontSize: 13),)),title: Text("LTT -> Gateway of India"),subtitle: Text("7:00am to 7:30am"),trailing: Text("100 RS"),),
              SizedBox(height: 10,),
              ListTile(leading: CircleAvatar(radius: 35,child: Text("Breakfast",style: TextStyle(fontSize: 13),)),title: Text("Gateway of India"),subtitle: Text("8:30 to 9:30am"),trailing: Text("100 RS"),),
              SizedBox(height: 10,),
              ListTile(leading: CircleAvatar(radius: 35,child: Text("Ferry",style: TextStyle(fontSize: 13),)),title: Text("Gateway of India -> Elephanta Caves"),subtitle: Text("10:15am to 10:45am"),trailing: Text("75 RS"),),
              SizedBox(height: 10,),
              ListTile(leading: CircleAvatar(radius: 35,child: Text("Ferry",style: TextStyle(fontSize: 13),)),title: Text("Elephanta Caves -> Gateway of India"),subtitle: Text("12:30pm to 1:00pm"),trailing: Text("75 RS"),),
              SizedBox(height: 10,),
              ListTile(leading: CircleAvatar(radius: 35,child: Text("Lunch",style: TextStyle(fontSize: 13),)),title: Text("Gateway of India"),subtitle: Text("1:10pm to 2:00pm"),trailing: Text("150 RS"),),
              SizedBox(height: 10,),
              Center(child: Text("Day 3",style: TextStyle(fontWeight: FontWeight.bold),)),
              ListTile(leading: CircleAvatar(radius: 35,child: Text("Taxi",style: TextStyle(fontSize: 13),)),title: Text("Juhu Beach"),subtitle: Text("5:00pm to 7:30pm"),trailing: Text("300 RS"),),
              SizedBox(height: 10,),
              ListTile(leading: CircleAvatar(radius: 35,child: Text("Hotel",style: TextStyle(fontSize: 13),)),title: Text("Dinner"),subtitle: Text("8:20pm to 9:30pm"),trailing: Text("400 RS"),),              
              SizedBox(height: 10,),
              ListTile(leading: CircleAvatar(radius: 35,child: Text("Train",style: TextStyle(fontSize: 13),)),title: Text("Mumbai -> Kochi"),subtitle: Text("10:15pm to 10:00pm"),trailing: Text("300 RS"),),
                            
            ],
          ),
          
        ),
      ),
    );
  }
}