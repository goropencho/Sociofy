import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';

class Messages extends StatefulWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  List<String> names = [
    "Gaurav",
    "Shubham",
    "Ajinkya",
    "Patrick",
    "Sampanna",
    "Ramkrishna"
  ];
  List<String> messages = [
    "Stupid Cupid",
    "Hello",
    "Aee Goro",
    "Atta Kalti dili Pahijel",
    "Bol re Gaurya",
    "Arre Gaurya....."
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: names.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 5,
            child: ListTile(
                title: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        names.elementAt(index),
                        style: TextStyle(
                            fontSize: 18, fontStyle: FontStyle.normal),
                      ),
                      Text(messages.elementAt(index),
                          style: TextStyle(
                              fontSize: 10, fontStyle: FontStyle.italic)),
                    ]),
                leading: Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage("assets/" +
                                names.elementAt(index).toLowerCase() +
                                ".jpg")),
                        border: Border.all(
                          color: Colors.green,
                          width: 2.0,
                          style: BorderStyle.solid,
                        )))),
          );
        });
  }
}
