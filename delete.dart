import 'package:flutter/material.dart';

import 'main.dart';

class Delete extends StatefulWidget {
  @override
  State<Delete> createState() => _DeleteState();
}

class _DeleteState extends State<Delete> {
  TextEditingController name = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            controller: name,
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: 'name'),
          ),
          FlatButton(onPressed: () async {}, child: Text('delete'))
        ],
      ),
    );
  }
}
