
                  // Pratham Darji / Vedant Nimbalkar 

import 'package:flutter/material.dart';
import 'package:stopwatch/pages/homepage.dart';                // packages of widgets
void main(){                                              //entry point of the app 
  runApp(Myapp());                  //saying to run downone Myapp which will return material app
}                                        

class Myapp extends StatelessWidget { //stateless widget will not perform any function simply it show blankscreen

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      debugShowCheckedModeBanner: false,          //return material app
      home: homepage(),           // which has homepage 
    );
  }
} 