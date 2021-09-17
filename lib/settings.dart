import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          child: FloatingActionButton(
                            onPressed: () {},
                            child: Icon(
                              Icons.cloud,
                              size: 50,
                            ),
                          ),
                        ),
                        Container(
                          height: 8,
                          width: 8,
                        ),
                        Text('Cloud')
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 15,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          child: FloatingActionButton(
                            onPressed: () {},
                            child: Icon(
                              Icons.backup,
                              size: 50,
                            ),
                          ),
                        ),
                        Container(
                          width: 8,
                          height: 8,
                        ),
                        Text('All Backups')
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
                child: Text(
              "Application Backup",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            )),
          ),
          Card(
            child: ExpansionTile(
              leading: Icon(Icons.music_note),
              title: Text("Music"),
              trailing: Switch.adaptive(value: true, onChanged: (bool) {}),
            ),
          ),
          Card(
            child: ExpansionTile(
              leading: Icon(Icons.location_pin),
              title: Text("Maps"),
              trailing: Switch.adaptive(value: true, onChanged: (bool) {}),
            ),
          ),
          Card(
            child: ExpansionTile(
              leading: Icon(Icons.photo_album),
              title: Text("Gallery"),
              trailing: Switch.adaptive(value: true, onChanged: (bool) {}),
            ),
          ),
          Card(
            child: ExpansionTile(
              leading: Icon(Icons.public),
              title: Text("Browser"),
              trailing: Switch.adaptive(value: true, onChanged: (bool) {}),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          child: FloatingActionButton(
                            onPressed: () {},
                            child: Icon(
                              Icons.delete_forever,
                              size: 50,
                            ),
                          ),
                        ),
                        Container(
                          width: 8,
                          height: 8,
                        ),
                        Text('Delete Account')
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 15,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          child: FloatingActionButton(
                            onPressed: () {},
                            child: Icon(
                              Icons.logout,
                              size: 50,
                            ),
                          ),
                        ),
                        Container(
                          width: 8,
                          height: 8,
                        ),
                        Text('Log Out')
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
