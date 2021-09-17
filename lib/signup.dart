import 'package:flutter/material.dart';
import 'theme.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({Key? key}) : super(key: key);

  @override
  _SignupFormState createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sociofy"),
        backgroundColor: Theme.of(context).primaryColorDark,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 15.0, bottom: 0, left: 15.0, right: 15.0),
                  child: TextFormField(
                    style: TextStyle(color: Theme.of(context).accentColor),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "First Name",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15.0, bottom: 0),
                  child: TextFormField(
                    style: TextStyle(color: Theme.of(context).accentColor),
                    decoration: InputDecoration(
                      fillColor: Theme.of(context).accentColor,
                      border: OutlineInputBorder(),
                      labelText: "Last Name",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15.0, bottom: 0),
                  child: TextFormField(
                    style: TextStyle(color: Theme.of(context).accentColor),
                    decoration: InputDecoration(
                      fillColor: Theme.of(context).accentColor,
                      border: OutlineInputBorder(),
                      labelText: "Email",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15.0, bottom: 0),
                  child: TextFormField(
                    style: TextStyle(color: Theme.of(context).accentColor),
                    decoration: InputDecoration(
                      fillColor: Theme.of(context).accentColor,
                      border: OutlineInputBorder(),
                      labelText: "Password (6 or more characters)",
                      hintText:
                          "must have uppercase letters ,lowercase letters, numbers.",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15.0, bottom: 0),
                  child: TextFormField(
                    style: TextStyle(color: Theme.of(context).accentColor),
                    decoration: InputDecoration(
                      fillColor: Theme.of(context).accentColor,
                      border: OutlineInputBorder(),
                      labelText: "Confirm Password",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Container(
                      height: 50,
                      width: 180,
                      decoration: BoxDecoration(
                          color: Theme.of(context).accentColor,
                          borderRadius: BorderRadius.circular(15)),
                      child: TextButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                              return Theme.of(context)
                                  .buttonColor; // Use the component's default.
                            },
                          ),
                        ),
                        onPressed: () {},
                        child: Text("Create Account",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            )),
                      )),
                ),
                SizedBox(
                  height: 130,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context, '/');
                    },
                    child: Text(
                      'Already User? Log in.',
                      style: TextStyle(color: Theme.of(context).accentColor),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
