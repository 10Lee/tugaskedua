import 'package:figma_ui/models/message.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<Message> messages = [
    Message(
      text: 'hollaaaa.....',
      date: DateTime.now().subtract(Duration(minutes: 1)),
      isSentByMe: false,
    ),
    Message(
      text: 'hola amigo',
      date: DateTime.now().subtract(Duration(minutes: 5)),
      isSentByMe: true,
    ),
  ].reversed.toList();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(30.0),
          child: AppBar(
            titleSpacing: -10,
            leading: InkWell(
              onTap: () => Navigator.pop(context),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Icon(Icons.arrow_back_ios),
              ),
            ),
            centerTitle: false,
            backgroundColor: Theme.of(context).primaryColor,
            title: Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Text(
                'Indianapolis',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'RobotoCondensedBold'),
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: GroupedListView<Message, DateTime>(
                  order: GroupedListOrder.DESC,
                  padding: const EdgeInsets.all(8),
                  elements: messages,
                  groupBy: (message) => DateTime(
                    message.date.year,
                    message.date.month,
                    message.date.day,
                  ),
                  groupHeaderBuilder: (Message message) =>
                      SizedBox(height: 20.0),
                  itemBuilder: (context, Message message) => Align(
                    alignment: message.isSentByMe
                        ? Alignment.centerRight
                        : Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: message.isSentByMe
                          ? CrossAxisAlignment.end
                          : CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: message.isSentByMe
                                ? BorderRadius.only(
                                    topLeft: Radius.circular(40),
                                    bottomLeft: Radius.circular(40),
                                    topRight: Radius.circular(40),
                                  )
                                : BorderRadius.only(
                                    topLeft: Radius.circular(40),
                                    topRight: Radius.circular(40),
                                    bottomRight: Radius.circular(40),
                                  ),
                            color: message.isSentByMe
                                ? Color(0xFF316697)
                                : Color(0xFF554A60),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 12.0, horizontal: 20.0),
                            child: Text(
                              message.text,
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'RobotoCondensedRegular',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(DateFormat.ms().format(message.date)),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.grey[200],
              padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      width: 100,
                      height: 100,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Type something here...',
                          hintStyle: TextStyle(fontStyle: FontStyle.italic),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 3),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20.0),
                  Container(
                    padding: const EdgeInsets.all(12),
                    margin: const EdgeInsets.only(top: 3.5),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Image.asset('assets/images/whitearrow.png'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
