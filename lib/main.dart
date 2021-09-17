import 'package:flutter/material.dart';
import 'package:sociofy/newsfeed.dart';
import 'package:sociofy/signup.dart';
import 'theme.dart';

// color brown = 61, 37, 35
// color red = 219, 49, 35
// color orange = 219, 72, 13
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: myTheme,
    themeMode: ThemeMode.dark,
    home: NewsFeedPage(),
    initialRoute: '/',
    routes: {
      '/signup': (context) => SignupForm(),
    },
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColorDark,
        title: Text(
          "Sociofy",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: RegistrationForm(),
    );
  }
}

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({Key? key}) : super(key: key);

  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                    labelText: "Username",
                    hintText: "Enter your username",
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
                    labelText: "Password",
                    hintText: "Enter your Password",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot Password",
                      style: TextStyle(
                          color: Theme.of(context).accentColor, fontSize: 15.0),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColorDark,
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
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NewsFeedPage()));
                      },
                      child: Text("Login",
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignupForm()));
                  },
                  child: Text(
                    'New User? Create Account',
                    style: TextStyle(color: Theme.of(context).accentColor),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
