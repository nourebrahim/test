import 'package:flutter/material.dart';

class MyCardprofil extends StatelessWidget {
  String name, password, email, phone;
  MyCardprofil(this.name, this.password, this.email, this.phone);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(name),
        SizedBox(
          width: 10,
        ),
        Text(password),
        Text(email),
        SizedBox(
          width: 10,
        ),
        Text(phone)
      ],
    );
  }
}
