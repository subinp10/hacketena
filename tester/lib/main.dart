import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:tester/pages/home_page.dart';
import 'package:tester/plans/high.dart';
import 'package:tester/plans/low.dart';
import 'package:tester/plans/mid.dart';
import 'package:tester/screens/LoginScreen.dart';
import 'package:tester/screens/Splash.dart';
import 'package:tester/tripper/first.dart';
import 'package:tester/firebase_options.dart';

// Copyright 2020, the Chromium project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.


import 'firebase_options.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
   Firebase.initializeApp();
  runApp( MyApp());
}
class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
    home:LoginScreen(),
      routes: {
        'one': (ctx) {
          return HomePage();
        },
        'two': (ctx) {
          return low();
        }, 'three': (ctx) {
          return mid();
        },
        'four': (ctx) {
          return high();
        },


      }
    );
  }
}
