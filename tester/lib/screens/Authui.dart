import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
class Authui extends StatelessWidget {

 static const String id ='authui-screen';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(child:Column(mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(width: 220,
            child: ElevatedButton(onPressed: ()
            {
             // Navigator.pushNamed(context, phoneauthscreen.id);
                 print("hai");
            },
                style: ButtonStyle(backgroundColor:MaterialStatePropertyAll(Colors.white
            )),
                child:Row(children: [
              Icon(Icons.phone_android_outlined,color: Colors.black,),
              SizedBox(height: 8,),
              Text('continue with the phone',style: TextStyle(color: Colors.black),)
            ],) ),
          ),
          SignInButton(Buttons.Google, text:'continue with Google',
              onPressed: (){}),
          SignInButton(Buttons.FacebookNew, text:'continue with Facebook',
              onPressed: (){}),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('OR',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),),
          ),
          Text('Login with Email',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,decoration: TextDecoration.underline),),

          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Text('Terms and conditions apply',style: TextStyle(color: Colors.white,fontSize: 10),),
          )

        ],
      )),
    );
  }
}
