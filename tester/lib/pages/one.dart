import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class one extends StatefulWidget {
  const one({super.key});

  @override
  State<one> createState() => _oneState();
}

class _oneState extends State<one> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: Center(
      child: Text('your travel plan dislay here.',
                  style: TextStyle(
      color: Colors.white,
      fontSize: 18),
        ),
      ),
    );
  }
}
