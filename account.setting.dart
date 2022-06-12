import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

import 'main.dart';

class Add_Account extends StatefulWidget {
  @override
  State<Add_Account> createState() => Add_new();
}

class Add_new extends State<Add_Account> {
  TextEditingController Name= new TextEditingController();
  TextEditingController Password= new TextEditingController();
  TextEditingController email= new TextEditingController();
  TextEditingController phone= new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            controller:Name,
            decoration:InputDecoration(
                labelText: 'Name', border: OutlineInputBorder()),
          ),
          SizedBox(
            height: 5,
          ),
          TextField(
            controller:Password,
            decoration:InputDecoration(
                labelText: 'password', border: OutlineInputBorder()),
          ),
          SizedBox(
            height: 5,
          ),
          TextField(
            controller:email,
            decoration:InputDecoration(
                labelText:'email', border: OutlineInputBorder()),
          ),
          SizedBox(
            height: 5,
          ),
          TextField(
            controller:phone,
            decoration:InputDecoration(
                labelText: 'phone', border: OutlineInputBorder()),
          ),
          FlatButton(
              onPressed: () async {
                String a =Name.text.toString();
                String b =Password.text.toString();
                String c =Name.text.toString();
                String d =phone.text.toString();
                await mydb.insert(
                    "phonebook",
                    <String, dynamic>{
                      "name": a,
                      "password": b,
                      "email": c,
                      "phone": d,
                    },
                    conflictAlgorithm: ConflictAlgorithm.replace);
              },
              child: Text('Save'))
        ],
      ),
    );
  }
}
