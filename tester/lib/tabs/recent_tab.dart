import 'package:flutter/material.dart';

import '../components/nft_card.dart';

class RecentTab extends StatelessWidget {
  const RecentTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
        padding: EdgeInsets.all(10),
        children: [
          SizedBox(
            height: 5,
          ),
          GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed('two');
      },
      child: Container(
        margin: EdgeInsets.only(right: 5),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7DTC1mhKT8XvKTz7H0Ps2227lC7Wkb6OX2eYHDug4K-EZsRpVM21a2_xoDyiVjVEVoVw&usqp=CAU',
                width: 1080,
                height: 175,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: 1080,
              height: 175,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.black54),
              child: Text(
                'Low-Budget',
                style: TextStyle(color: Colors.amber,fontWeight: FontWeight.w800,fontSize: 25),
              ),
            )
          ],
        ),
      ),
    ),
     SizedBox(
            height: 5,
          ),         
          GestureDetector(
      onTap: () {

        Navigator.of(context).pushNamed('three');
      },
      child: Container(
        margin: EdgeInsets.only(right: 5),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/6/60/CN76%2C_Port_Pirie%2C_1951%281%29.jpg',
                width: 1080,
                height: 175,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: 1080,
              height: 175,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.black54),
              child: Text(
                'Medium-Budget',
                style: TextStyle(color: Colors.amber,fontWeight: FontWeight.w800,fontSize: 25),
              ),
            )
          ],
        ),
      ),
    ),
          SizedBox(
            height: 5,
          ),
          GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed('four');
      },
      child: Container(
        margin: EdgeInsets.only(right: 5),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.network(
                'https://media.istockphoto.com/id/629679008/photo/yellow-cabs-at-upper-west-site-of-manhattan-new-york.jpg?s=612x612&w=0&k=20&c=NqgFrYdbXfDXzFu3RF2JPqds_NRhiJar-A30ECNnPHU=',
                width: 1080,
                height: 175,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: 1080,
              height: 175,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.black54),
              child: Text(
                'High-Budget',
                style: TextStyle(color: Colors.amber,fontWeight: FontWeight.w800,fontSize: 25),
              ),
            )
          ],
        ),
      ),
    ),
        ],
      );
  }
}
