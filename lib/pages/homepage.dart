import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homepage extends StatefulWidget {

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> { 

                                        //declaring all the function in class and outside the build 
late Stopwatch stopwatch;     //declaring stopwatch function with late states that will declare later         
  late Timer t;
  
  void handlestartstop(){
  if(stopwatch.isRunning){
  stopwatch.stop();
  }
  else{    stopwatch.start();
}
    
}


String returnformatTedtext(){     //eleapsed is a property which tell us that how much times passed running our timer 
  var  milli = stopwatch.elapsed.inMilliseconds;        //for setting and showing time in milisecond
  String milliseconds = (milli % 1000).toString().padLeft(3, "0");
   String seconds = ((milli ~/ 1000) % 60).toString().padLeft(2, "0");
    String minutes = ((milli ~/ 1000) ~/ 60).toString().padLeft(2, "0");
  return "$minutes:$seconds:$milliseconds";                                      // returns millisecond this will show milli second
}

      @override
  void initState() {                     //whenever the homepage will load at that time this initstate function will  run
    // TODO: implement initState
     stopwatch=Stopwatch();                    //initializing stopwatch in initstate          also maked an instance of Stopwatch =stopwatch   through this we can assces functions and easily do start stop and reset
       
    t = Timer.periodic(Duration(milliseconds: 30), (timer) {
      setState(() {});
    });  } 
          
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(                             //           for blank white screen 
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,            //comes in the middle of the screen 
            children: [
            CupertinoButton(                                     // for making a button which is pressable
              onPressed: (){
                handlestartstop();                             //declaring a function of button start stop  which we have declared up 
              },                                  
              padding: EdgeInsets.all(0),                 //padding 0 from all side 
              child: Container(
                alignment: Alignment.center,                // for aligning text and border in center
                height: 250,                                // border height 
                decoration: BoxDecoration(   
                  shape: BoxShape.circle,                      //for inserting border box
                  border: Border.all(
                    color: Color(0xFF03A9F4),  
                    width: 4,
                  )
                ),
                child: Text(returnformatTedtext() , style: TextStyle(        //text style for fontsize and weight 
                  fontSize: 40,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                )),
              ),
            ),

            SizedBox(height: 15,),     //for placing a gap between timer and button

CupertinoButton(
  onPressed: (){
    stopwatch.reset();
  },
  padding:EdgeInsets.all(0),
  child: Text("Reset",style: TextStyle(
    color: Colors.red,
  ),),

  )
   
          ]),
        )),
    );
  }
}
