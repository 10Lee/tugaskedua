import 'package:figma_ui/screens/chatscreen.dart';
import 'package:figma_ui/widgets/chat_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

import 'package:figma_ui/constants/constant.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(30.0),
        child: AppBar(
          titleSpacing: -37,
          centerTitle: false,
          leading: Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Icon(
              Icons.arrow_back_ios,
              color: Theme.of(context).primaryColor,
            ),
          ),
          backgroundColor: Theme.of(context).primaryColor,
          title: Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Text(
              'Home Screen',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'RobotoCondensedBold',
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (_) => ChatScreen())),
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(Icons.add),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                      color: Colors.black45,
                      width: .5,
                      style: BorderStyle.solid),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  'Chats',
                  style: kTextStyleBlack.copyWith(
                    color: Colors.black,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'RobotoCondensedRegular',
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            ChatTile(
              name: 'Indianapolis',
              chatExcerpt: 'Hollaaaa....',
              time: '19.30',
              imageUrl: 'assets/images/indianapolis.png',
            ),
            ChatTile(
              name: 'Proffessor',
              chatExcerpt: 'How are you today?',
              time: '17.45',
              imageUrl: 'assets/images/proffesor.png',
            ),
            ChatTile(
              name: 'Copenhagen',
              chatExcerpt: 'Practice makes perfects',
              time: '08.30',
              imageUrl: 'assets/images/coppenhagen.png',
            ),
          ],
        ),
      ),
    );
  }
}
