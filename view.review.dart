import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'card of review.dart';



// ignore: camel_case_types
class review extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(backgroundColor:Colors.black54 ,),


        body:FutureBuilder(
            future: FirebaseFirestore.instance.collection("data").get(),
            builder:(context,AsyncSnapshot snapshot){
              if(snapshot.hasData==false){
                return Text("check wifi");
              }
              else{
                return ListView.builder(
                    itemCount:snapshot.data.docs.length,
                    itemBuilder:(context,index){
                      return cardreview(snapshot.data[index]["name"],snapshot.data[index]["phone"]);
                    }
                );

              }}
        )


    );
  }
}