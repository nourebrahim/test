import 'package:flutter/material.dart';

class cardreview extends StatelessWidget {
  String name,phone;
  cardreview(this.name,this.phone);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(name),
        SizedBox(width: 10,),
        Text(phone)
      ],
    );
  }
}