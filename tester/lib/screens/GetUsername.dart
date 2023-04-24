import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uuid/uuid.dart';
class Getusername extends StatelessWidget {
  final String documentid;
  Getusername({required this.documentid});

  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection('users');
    return FutureBuilder<DocumentSnapshot>(builder:((context,snapshot){
      if(snapshot.connectionState==ConnectionState.done){
        Map<String ,dynamic> data = snapshot.data!.data() as Map<String,dynamic>;
        return Text('First Name:${data['name']}');
      }
      return Text('loading');
    }));

  }


}

