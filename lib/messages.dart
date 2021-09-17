import 'package:flutter/material.dart';

class TileData extends StatefulWidget {
  final String name;
  final String messages;
  final String images;
  final int notifications;
  const TileData(
      {Key? key,
      required this.name,
      required this.messages,
      required this.images,
      required this.notifications})
      : super(key: key);

  @override
  _TileDataState createState() => _TileDataState();
}

class _TileDataState extends State<TileData> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListTile(
      leading: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: 90,
          maxWidth: 90,
        ),
        child: Image.asset(
          widget.images,
          fit: BoxFit.fill,
        ),
      ),
      title: Text(widget.name),
      trailing: Text(widget.notifications.toString()),
    ));
  }
}

class Messages extends StatefulWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Card(
            elevation: 10.0,
            shadowColor: Colors.blue,
            child: TileData(
              name: "Gaurav",
              messages: "HELLO BUDDY",
              images: "assets/trial.jpeg",
              notifications: 0,
            ),
          ),
        ],
      ),
    );
  }
}
