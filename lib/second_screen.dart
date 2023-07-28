import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second screen"),
        centerTitle: true,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Padding(
          padding: const EdgeInsets.all(32.0),
          child: TextField(
            controller: textEditingController,
            style: TextStyle(fontSize: 24.0, color: Colors.black),
          ),
        ),
        ElevatedButton(
            onPressed: () {
              String textToSendBack = textEditingController.text;
              Navigator.pop(context, textToSendBack);
            },
            child: Text(
              "Send text back",
              style: TextStyle(fontSize: 24.0),
            ))
      ]),
    );
  }
}
