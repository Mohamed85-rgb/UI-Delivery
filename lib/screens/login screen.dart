// ignore_for_file: camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:delivery/screens/Register%20screen.dart';
import 'package:delivery/screens/home.dart';
import 'package:flutter/material.dart';

class loginscreen extends StatefulWidget {
  const loginscreen({Key? key}) : super(key: key);

  @override
  _loginscreenState createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.teal[400],
      body: SafeArea(
        child: Container(width: double.infinity,
          child: SingleChildScrollView(
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Image(image: AssetImage("images/user.png",),width: 150,height: 150,),
                ),

                names('Username',Icons.email),
                names('Password',Icons.password),


                SizedBox(height: 20,),
                SizedBox(height: 35,),
                Container(width: 250,
                  child: RaisedButton(
                    onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>home()));

                    },
                    child: Text('Login'),
                    highlightColor: Colors.teal,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Dont have an account ?'),
                    TextButton(onPressed: ()
                    {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>register()));
                    },
                        child: Text(
                          'Register',
                          style: TextStyle(
                              color: Colors.white
                          )
                          ,)
                    )
                  ],
                )







              ],
            ),
          ),
        ),
      ),
    );
  }
   Widget names(text,icon) {
    return Container(
        width:250,
        child: TextFormField(
        style: TextStyle(color: Colors.white),
     decoration: InputDecoration(
     suffixIcon: Icon(icon),
     labelText: text,
     ))
    );
   }
}
