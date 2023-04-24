import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/nft_card.dart';
import '../group_chats/group_chat_screen.dart';

class TrendingTab extends StatelessWidget {
  const TrendingTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children:[ SizedBox(
          height: 10,
      ),
      ListTile(
                onTap: () {
                           },
                title: Text(
                  'Roshan',
                  style: GoogleFonts.poppins(
                  textStyle: Theme.of(context).textTheme.displayMedium,
                  fontSize: 17,
                  //fontWeight: FontWeight.w500,
                  color: Colors.black
                ),
                ),
                subtitle: Text(
                  'Travelling To Bombay.',
                  style: GoogleFonts.poppins(
                  textStyle: Theme.of(context).textTheme.displayMedium,
                  fontSize: 15
                ),
                ),
                leading: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.amberAccent,
                  backgroundImage: AssetImage('lib/images/apiens_1.png'),
                ),
                trailing: Text(
                  '',
                  style: GoogleFonts.poppins(
                  textStyle: Theme.of(context).textTheme.displayMedium,
                  fontSize: 13,
                  //fontWeight: FontWeight.w500,
                  color: Colors.black
                ),
                ),
              ),
              ListTile(
                onTap: () {
                           },
                title: Text(
                  'Sineesh',
                  style: GoogleFonts.poppins(
                  textStyle: Theme.of(context).textTheme.displayMedium,
                  fontSize: 17,
                  //fontWeight: FontWeight.w500,
                  color: Colors.black
                ),
                ),
                subtitle: Text(
                  'Travelling To Delhi Through Bombay.',
                  style: GoogleFonts.poppins(
                  textStyle: Theme.of(context).textTheme.displayMedium,
                  fontSize: 15
                ),
                ),
                leading: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.amberAccent,
                  backgroundImage: AssetImage('lib/images/apiens_2.png'),
                ),
                trailing: Text(
                  '',
                  style: GoogleFonts.poppins(
                  textStyle: Theme.of(context).textTheme.displayMedium,
                  fontSize: 13,
                  //fontWeight: FontWeight.w500,
                  color: Colors.black
                ),
                ),
              ),SizedBox(height: 101,),
     FloatingActionButton(
    child: Icon(Icons.group),
    onPressed: () => Navigator.of(context).push(
    MaterialPageRoute(
    builder: (_) => GroupChatHomeScreen(),
    ),
    )
     )
      ]
    );
  }
}
