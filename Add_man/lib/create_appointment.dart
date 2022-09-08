import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateAppointment extends StatelessWidget {

  int index = 2;

  @override
  Widget build(BuildContext context) {
     final items = <Widget>[
       Icon(Icons.home, size: 30),
       Icon(Icons.menu, size: 30),
       Icon(Icons.add, size: 30),
       Icon(Icons.search, size: 30),
       Icon(Icons.person, size: 30),
     ];

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.indigo,
        leading: Icon(Icons.menu),
        //title: Row(
          //children: <Widget>[
          //  Image.asset('assets/SLT-2.png', height: 90,)
            
         // ],
          
       // ),
        actions: <Widget>[
          Image.asset('assets/SLT-2.png', width: 150,)
        ],
      ),

      body: SingleChildScrollView(
          child: Column(
              children: <Widget>[


                Padding(
                  padding: const EdgeInsets.only(left: 10.0 , top: 25.0),
                  child: Container(
                    child: Text('Create Appointment' ,
                      style: TextStyle(fontSize: 20, color: Colors.indigo, fontWeight: FontWeight.bold),
                    ),

                  ),
                ),

              ]

          )

      ),

      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.indigo,
        buttonBackgroundColor: Colors.indigo,
        backgroundColor: Colors.transparent,
        height: 60,
        index: index,
        items: items,

      ),

    );
  }
}
