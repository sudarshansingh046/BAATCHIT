import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black,
          centerTitle: true,
          title: const Text(
            "BAATCHIT",
          )),
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Padding(
              padding: EdgeInsets.all(40.0),
              child: Text(
                "Start new conversation with friends",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
