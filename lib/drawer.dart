// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:delivery/screens/Manage%20my%20cards.dart';
import 'package:delivery/screens/email%20address%20screen.dart';
import 'package:delivery/screens/login%20screen.dart';
import 'package:flutter/material.dart';

class header extends StatefulWidget {
  const header({Key? key}) : super(key: key);

  @override
  _headerState createState() => _headerState();
}

class _headerState extends State<header> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: 200,
        child: Column(
          children: [
            CircleAvatar(radius: 70,backgroundImage: AssetImage("images/emam.jpg"),),
            SizedBox(height: 20,),
            Text("Mohmed Mahmoud",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Text('mohmed_mahmoud@gmail.com',style: TextStyle(color: Colors.black54),)
          ],
        ),
      ),
    );
  }
}



class options extends StatelessWidget {
  const options({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: 400,
        child: Column(
          children: [
            chioces('Email Address', () {Navigator.push(context, MaterialPageRoute(builder:(context)=>email_address())); }),
            chioces('Manage my cards', () { Navigator.push(context, MaterialPageRoute(builder:(context)=>manage_card()));}),
            chioces('Languages', () {
              showModalBottomSheet(
                  context: context,
                  builder: (context)=>langauge()
              );
            }),
            SizedBox(height: 50,),
            chioces('Help & Support', () { }),
            chioces('Logout', () { Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>loginscreen()));}),

          ],
        ),
      ),
    );
  }

  Widget chioces(String text,VoidCallback func){
    return Container(
        width:250,
        child: FlatButton(
          color: Colors.teal,
          onPressed: func,
          child: Text('$text',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),
          )
          ,)
    );
  }
}

Widget langauge()
{
  return Container(height: 120,color: Colors.teal,
    child: Column(
      children: [
        Expanded(child: Container(width: double.infinity,
        child: TextButton(onPressed: () {  },
            child: Text('English',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)),
      )),
        Expanded(child: Container(width: double.infinity,
        child: TextButton(onPressed: () {  },
            child: Text('Arabic',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)),
      )),



      ],
    ),
  );
}



