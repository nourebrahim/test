import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'cardprofil.dart';
import 'main.dart';

class View_profil extends StatefulWidget {
  @override
  State<View_profil> createState() => _View_AllState();
}

class _View_AllState extends State<View_profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
        future: mydb.query('phonebook'),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData == false) {
            return Text("no data");
          } else {
            return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  return MyCardprofil(
                      snapshot.data[index]["name"],
                      snapshot.data[index]["password"],
                      snapshot.data[index]["email"],
                      snapshot.data[index]["phone"]);
                });
          }
        },
      ),
    );
  }
}
