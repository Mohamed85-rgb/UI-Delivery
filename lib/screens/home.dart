// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:flutter/material.dart';

import '../drawer.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    floatingActionButton: SpeedDial(
      child: Image(image: AssetImage("images/package.png",),height: 40,width: 50,),
      overlayColor: Colors.teal,
      overlayOpacity:0.4,
      backgroundColor: Colors.teal,
      children: [
        SpeedDialChild(backgroundColor: Colors.white
            ,label: 'Ship'
            ,child:Image(image: AssetImage("images/trolley.png",),height: 35,width: 35,),
          onTap: (){}
        ),//Ship
        SpeedDialChild(backgroundColor: Colors.white
            ,label: 'offices'
            ,child: Image(image: AssetImage("images/navigator.png",),height: 40,width: 50,),
          onTap: (){}
        ),//Offices
      ],
    ),


      appBar: AppBar(centerTitle: true,
        backgroundColor: Colors.teal,
        title: Text('Delivery App',
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
          )
          ,)
        ,)
      ,
      drawer: Drawer(
        child:Container(
            child: Column(
              children:
              [
                header(),
                options()

              ],
            )
        ) ,

      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(width: 400,
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Enter name/number of package'
                        ,suffixIcon: Icon(Icons.search),
                        border: OutlineInputBorder()
                    ),
                  ),
                ),
              ),
              SizedBox(height: 150,),


              IconButton(
                onPressed: (){

              }, icon: Icon(Icons.add_box_rounded),iconSize: 150,),
              Text('Deliver your First Package',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),


            ],
          ),
        ),
      ),
      drawerEnableOpenDragGesture: true,
    );
  }
}
