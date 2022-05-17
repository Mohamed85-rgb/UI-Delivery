// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'login screen.dart';

class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  _registerState createState() => _registerState();
}

class _registerState extends State<register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.teal[400],
      appBar: AppBar(elevation: 0,backgroundColor: Colors.teal[400],leading: IconButton(onPressed: (){Navigator.pop(context);},icon:Icon(Icons.arrow_back),),),
      body: SafeArea(
        child: Container(width: double.infinity,
          child: SingleChildScrollView(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Image(image: AssetImage("images/user.png",),width: 150,height: 150,),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Expanded(
                        child: xbhh('First Name'),
                      ),//first name
                      Expanded(
                        child: xbhh('Last Name'),
                      ),//last name
                    ],
                  ),
                ),



            xbhh('Email'),//email
            xbhh('Password'),//password
            xbhh('Confirm Password'),//confirm pass
            xbhh('Address'),//address
            xbhh('Phone Number'),


                SizedBox(height: 20,),
                Container(width: 100,
                  child: RaisedButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    child: Text('Register'),
                    highlightColor: Colors.teal,
                  ),
                ),







              ],
            ),
          ),
        ),
      ),
    );


  }
  Widget xbhh(text){
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
          width:double.infinity,
          child: TextFormField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              labelText: text,

            ),

          )
      ),
    );
  }
}



