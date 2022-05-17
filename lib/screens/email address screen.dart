// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class email_address extends StatefulWidget {
  const email_address({Key? key}) : super(key: key);

  @override
  _email_addressState createState() => _email_addressState();
}

class _email_addressState extends State<email_address> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.teal,
        centerTitle: true,
        title:Text('Email Address',
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25
          ),
        ) ,
      ),

    );
  }
}
