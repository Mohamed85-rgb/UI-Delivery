// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class manage_card extends StatefulWidget {
  const manage_card({Key? key}) : super(key: key);

  @override
  _email_addressState createState() => _email_addressState();
}

class _email_addressState extends State<manage_card> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.teal,
        centerTitle: true,
        title:Text('Visa card',
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25
          ),
        ) ,
      ),

    );
  }
}
