import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChatTile extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String chatExcerpt;
  final String time;

  const ChatTile({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.chatExcerpt,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(imageUrl),
          ),
          SizedBox(width: 10.0),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        name.toString(),
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        time.toString(),
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ],
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    chatExcerpt.toString(),
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    color: Colors.black54,
                    height: .5,
                    width: double.infinity,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
