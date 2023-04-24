import 'package:flutter/material.dart';

class NftCard extends StatelessWidget {
  final String imagePath;
  const NftCard({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10),
      children: [
        SizedBox(height: 5,),
        Container(
          child: Center(child: Text('Low-Budget',style: TextStyle(color: Colors.grey,fontSize: 20),)),
          //padding: EdgeInsets.all(10),
          height: 100,
          width: 1080,
          decoration: BoxDecoration(
            color: Colors.black,borderRadius: BorderRadius.circular(10)
          ),
        ),
        SizedBox(height: 5,),
        Container(
          child: Center(child: Text('Medium-Budget',style: TextStyle(color: Colors.grey,fontSize: 20),)),
          //padding: EdgeInsets.all(10),
          height: 100,
          width: 1080,
          decoration: BoxDecoration(
            color: Colors.black,borderRadius: BorderRadius.circular(10)
          ),
        ),
        SizedBox(height: 5,),
        Container(
          child: Center(child: Text('Luxury',style: TextStyle(color: Colors.grey,fontSize: 20),)),
          //padding: EdgeInsets.all(10),
          height: 100,
          width: 1080,
          decoration: BoxDecoration(
            color: Colors.black,borderRadius: BorderRadius.circular(10)
          ),
        ),
      ],
    );
  }
}
