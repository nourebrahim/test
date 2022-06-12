import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class Add_New extends StatefulWidget {
  @override
  State<Add_New> createState() => Add_new();
}

class Add_new extends State<Add_New> {
  TextEditingController Firstname = new TextEditingController();
  TextEditingController lastname = new TextEditingController();
  TextEditingController mobilNumber = new TextEditingController();
  TextEditingController email = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("MIDIC",
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
          centerTitle: true,
          foregroundColor: Colors.white,
          bottom: PreferredSize(
            preferredSize: Size(50, 50),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 340,
                    height: 50,
                    child: Padding(
                        padding: const EdgeInsets.only(top: 18),
                        child: Text(
                          "please rate your experience",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
                  ),
                ),
              ],
            ),
          )),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
                controller: Firstname,
                decoration: InputDecoration(
                    labelText: 'medicament name', border: OutlineInputBorder()),
                keyboardType: TextInputType.name),
            SizedBox(
              height: 5,
            ),
            TextField(
                controller: lastname,
                decoration: InputDecoration(
                    labelText: 'your review', border: OutlineInputBorder()),
                keyboardType: TextInputType.name),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              height: 5,
            ),
            FlatButton(
                onPressed: () async {
                  String a = Firstname.text;
                  String b = lastname.text;
                  FirebaseFirestore.instance
                      .collection("data")
                      .add(<String, dynamic>{
                    "Firstname": a,
                    "lastname": b,
                  });
                },
                child: Text(
                  'thanks for rate your experience',
                  style: TextStyle(color: Colors.blue[800]),
                ))
          ],
        ),
      ),
    );
  }
}
