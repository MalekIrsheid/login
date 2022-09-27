import 'package:flutter/material.dart';
import 'package:login/Home.dart';
import 'package:login/screens/login.dart';

class welcome_Page extends StatefulWidget {
  const welcome_Page({super.key});

  @override
  State<welcome_Page> createState() => _welcState();
}

class _welcState extends State<welcome_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
          child: ListView(
        children: [
          CircleAvatar(
            radius: 120,
            backgroundImage: NetworkImage(
                "https://us.123rf.com/450wm/sommersby/sommersby1908/sommersby190800173/130588066-user-with-tie-working-on-laptop-concept-illustration-of-person-with-personal-computer.jpg?ver=6"),
          ),
          ListTile(
            title: Text("malekirsheid2000@gmail.com"),
            subtitle: Text("Email"),
            tileColor: Colors.purple,
          ),
          ListTile(
            tileColor: Colors.blueAccent,
            title: Text("Mobile Application Devlopment(Flutter)"),
            subtitle: Text("LTUC"),
          )
        ],
      )),
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "http://m.gettywallpapers.com/wp-content/uploads/2020/04/Game-of-Thrones-Wallpaper-For-iphone.jpg"),
                fit: BoxFit.fill)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                child: Text(
              "welcome to my app",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            )),
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.pop(context, MaterialPageRoute(
                    builder: (context) {
                      return Log_in();
                    },
                  ));
                },
                icon: Icon(Icons.home),
                label: Text("Home"))
          ],
        ),
      ),
    );
  }
}
