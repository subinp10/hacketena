import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:tester/screens/CreateAccount.dart';
import 'package:tester/chatscreen/HomeScreen.dart';
import 'package:tester/screens/Methods.dart';
import 'package:tester/screens/Splash.dart';
import 'package:tester/screens/userdetails.dart';
import 'package:tester/tripper/first.dart';
import 'package:tester/firebase_options.dart';

class LoginScreen extends StatefulWidget {


  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(
      body:isLoading?Center(
        child: Container(
          height: size.height/20,
          width:size.height/20,
          child: CircularProgressIndicator(),
        ),
      )
          :Column(
        children: [
          SizedBox(
            height: size.height/20,
          ),
          Container(
            alignment: Alignment.centerLeft,
            width: size.width/1.2,
            child:IconButton(
              icon:Icon(Icons.arrow_back_ios),onPressed: (){},
            )
          ),
          Container(
            width: size.width/1.1,
            child: (Text("welcome",
                style:TextStyle(fontSize: 28,
                    fontWeight: FontWeight.bold))),

          ),
          Container(
            width:size.width/1.3,
            child:Text(
              "Sign in to continue",
              style:TextStyle(
                color: Colors.grey,
                fontSize:25,
                fontWeight: FontWeight.w500,
              )
            )
          ),
          SizedBox(
            height: size.height/20,
          ),
          Container(width: size.width,
              alignment: Alignment.center,
              child: field(size, "email",Icons.account_box,_email)),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0),
            child: Container(
              width:size.width,
              alignment:Alignment.center,
              child:field(size, "password", Icons.lock,_password)
            ),
          ),
          SizedBox(
            height: size.height/20,

          ),
          customButton(size),
          SizedBox(
            height: size.height/40,

          ),
          GestureDetector(onTap:()=>Navigator.of(context).push(
          MaterialPageRoute(builder:(_)=>CreateAccount()

          )) ,
            child: Text(
              "Create Account",
              style: TextStyle(
                color:Colors.blue,
                fontSize: 13,
                fontWeight: FontWeight.w500
              ),
            ),
          )


        ],

      )
    );
  }
  Widget customButton(Size size) {
    return GestureDetector(
      onTap: () {
        if (_email.text.isNotEmpty && _password.text.isNotEmpty) {
          setState(() {
            isLoading = true;
          });

          logIn(_email.text, _password.text).then((user) {
            if (user != null) {
              print("Login Sucessfull");
              setState(() {
                isLoading = false;
              });
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => MyHomePage()));
            } else {
              print("Login Failed");
              setState(() {
                isLoading = false;
              });
            }
          });
        } else {
          print("Please fill form correctly");
        }
      },
      child: Container(
          height: size.height / 14,
          width: size.width / 1.2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.blue,
          ),
          alignment: Alignment.center,
          child: Text(
            "Login",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          )),
    );
  }
  Widget field(Size size,String hintText,IconData icon,TextEditingController cont){
    return Container(
      height: size.height/14,
      width: size.width/1.1,
      child:TextField(
        controller: cont,
        decoration:InputDecoration(
          prefixIcon:Icon(icon) ,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )
        ) ,
      )

    );
  }
}
