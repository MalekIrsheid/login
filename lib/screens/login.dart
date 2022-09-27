import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:login/Home.dart';
import 'afterlogin.dart';

class Log_in extends StatefulWidget {
  const Log_in({super.key});

  @override
  State<Log_in> createState() => _Log_inState();
}

class _Log_inState extends State<Log_in> {
  TextEditingController _Email = TextEditingController();
  TextEditingController _Password = TextEditingController();
  String email = "malekirsheid@gmail.com";
  String password = "m546821379";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Log in page")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CircleAvatar(
              radius: 100,
              child: Image(image: AssetImage("images/2.png")),
            ),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: TextField(
                controller: _Email,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 1)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hintText: "Please enter your email",
                    label: Text(
                      "Email",
                      style: TextStyle(fontSize: 25),
                    ),
                    prefixIcon: Icon(Icons.people)),
                maxLines: 1,
                maxLength: 30,
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: TextField(
                controller: _Password,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 1)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hintText: "Please enter your password",
                    label: Text(
                      "password",
                      style: TextStyle(fontSize: 25),
                    ),
                    prefixIcon: Icon(Icons.people)),
                maxLines: 1,
                maxLength: 20,
                textAlign: TextAlign.center,
                obscureText: true,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Text(
                                  "Can you please wait until we\n check your credentials?"),
                              Icon(Ionicons.logo_android)
                            ],
                          ),
                        ),
                        actions: [
                          ElevatedButton(
                              onPressed: () {
                                if (_Email.text == email &&
                                    _Password.text == password) {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return welcome_Page();
                                    },
                                  ));
                                } else {
                                  showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                      content:
                                          Text("Invalid Email or password"),
                                    ),
                                  );
                                }
                              },
                              child: Text("Sign-in")),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context, MaterialPageRoute(
                                  builder: (context) {
                                    return Home();
                                  },
                                ));
                              },
                              child: Text("Don't have account"))
                        ],
                      );
                    },
                  );
                },
                child: Text("log-in"))
          ],
        ),
      ),
    );
  }
}
