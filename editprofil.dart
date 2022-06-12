import 'package:flutter/material.dart';

import 'main.dart';

class Edit extends StatefulWidget {
  @override
  State<Edit> createState() => _EditState();
}

class _EditState extends State<Edit> {
  TextEditingController n1 = new TextEditingController();
  TextEditingController n2 = new TextEditingController();
  TextEditingController n3 = new TextEditingController();
  TextEditingController n4 = new TextEditingController();
  TextEditingController n5 = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            controller: n1,
            decoration:
                InputDecoration(labelText: 'n1', border: OutlineInputBorder()),
          ),
          SizedBox(
            height: 5,
          ),
          TextField(
            controller: n2,
            decoration: InputDecoration(
                labelText: 'New Name', border: OutlineInputBorder()),
          ),
          SizedBox(
            height: 5,
          ),
          TextField(
            controller: n3,
            decoration: InputDecoration(
                labelText: 'New password', border: OutlineInputBorder()),
          ),
          TextField(
            controller: n4,
            decoration: InputDecoration(
                labelText: 'New email', border: OutlineInputBorder()),
          ),
          SizedBox(
            height: 5,
          ),
          TextField(
            controller: n5,
            decoration: InputDecoration(
                labelText: 'New Phone', border: OutlineInputBorder()),
          ),
          FlatButton(
              onPressed: () async {
                String a = n1.text.toString();
                String b = n2.text.toString();
                String c = n3.text.toString();
                String d = n4.text.toString();
                String e = n5.text.toString();

                await mydb.update(
                    "phonebook", <String, dynamic>{"name":b, "password":c,"email":d, "phone":e,},
                    where: "name=?", whereArgs: [a]);
              },
              child: Text('save'))
        ],
      ),
    );
  }
}
