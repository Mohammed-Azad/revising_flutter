import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal[100],
        appBar: AppBar(
          title: Text(
            "Portfolio",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.teal[600],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage('images/img1.png'),
                radius: 60,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Mohammed Azad",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'brushfont',
                  letterSpacing: 2,
                  color: Colors.black54,
                ),
              ),
              Text(
                "Software Engineer",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 15,
                child: Divider(
                  color: Colors.teal,
                  thickness: 2,
                  indent: 50,
                  endIndent: 50,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: ListTile(
                  dense: true,
                  selectedColor: Colors.teal,
                  leading: Icon(
                    CupertinoIcons.phone,
                    size: 30,
                    color: Colors.black,
                  ),
                  title: Text(
                    "Talk to me!",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                child: ListTile(
                  onTap: _launchURL,
                  leading: Icon(
                    Icons.email,
                    color: Colors.black,
                    size: 30,
                  ),
                  title: Text(
                    "Contact me by email!",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

_launchURL() async {
  const url = 'https://mail.google.com/mail/#compose';
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}
