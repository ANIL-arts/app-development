import 'package:flutter/material.dart';

class TopNavigationBar extends StatelessWidget{

  Widget build(BuildContext context){
    return DefaultTabController(length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.redAccent,
            title: Row(children: [
              Text('wow pizza',
                style:TextStyle(fontSize: 20.0),),
              SizedBox(width: 160.0,),
              Container(child: GestureDetector(
                child: Image.asset(
                  'Image/twitter.png',
                  fit:BoxFit.contain,
                  height: 30,),
                ),),
              SizedBox(width: 10.0,),
              Container(child:GestureDetector(
                child: Image.asset(
                  'Image/Facebook.png',
                  fit: BoxFit.contain,
                  height: 40,
                ),
              ),)


            ],
            ),
            bottom: TabBar(indicatorColor: Colors.red,
              tabs: [
                Tab(icon: Container(height: 40,
                    child: Image.asset('lib/icons/pizza.png')),
                    text: 'Vegeatable Pizza'),
                Tab(icon: Container(height: 40,
                     child: Image.asset('lib/icons/pizza.png')),
                     text: 'cheese Pizza'),
                 Tab(icon: Container(height: 40,
                      child: Image.asset('lib/icons/french-fries.png')),
                      text: 'fries'),
              ])
        ),
        body: TabBarView(
           children: [
             MaterialApp(home: Center(child: Column(children: [
               Image.asset('Image/Vpizza.png',
                   width: 400.0,
                    height:300.0,),
                    Text("hi i am pizza assitant, what can i help you order?",
                    style: TextStyle(decoration: TextDecoration.none,fontSize:30.0),
                     textAlign: TextAlign.center,),

    ],),),),
    MaterialApp(home: Center(child: Column(children: [
    Image.asset('Image/cheese pizza.png',
    width: 400.0,
    height:300.0,),
    Text("hi i am pizza assitant, what can i help you order?",
    style: TextStyle(decoration: TextDecoration.none,fontSize:30.0),
    textAlign: TextAlign.center,),
        ]
    )
    ),
    ),
           ],
        ),
        ));
  }
}