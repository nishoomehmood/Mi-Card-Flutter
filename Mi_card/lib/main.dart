import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: MiCard(),
        ),
      ),
    );
  }
}

class MiCard extends StatelessWidget {
  const MiCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage('images/angela.jpg'),
          ),
          const Text(
            "Angela Yu",
            style: TextStyle(
              color: Colors.white,
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Pacifico',
            ),
          ),
          Text(
            "FLUTTER DEVELOPER",
            style: TextStyle(
              fontFamily: 'Source Sans Pro',
              color: Colors.teal.shade100,
              fontSize: 20.0,
              letterSpacing: 2.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            child: Divider(
              color: Colors.teal.shade100,
            ),
            height: 20.0,
            width: 150.0,
          ),
          Card(
            margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: const Icon(
                Icons.phone,
                color: Colors.teal,
              ),
              title: Text(
                "+92 123 456 789",
                style: TextStyle(
                  color: Colors.teal.shade900,
                  fontSize: 20.0,
                  fontFamily: 'Source Sans Pro',
                ),
              ),
            ),
          ),
          Card(
            margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: const Icon(
                Icons.email,
                color: Colors.teal,
              ),
              title: Text(
                "angelaYu@gmail.com",
                style: TextStyle(
                  color: Colors.teal.shade900,
                  fontSize: 20.0,
                  fontFamily: 'Source Sans Pro',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
