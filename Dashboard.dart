import 'package:flutter/material.dart';
import 'package:lab8/TopNavigationBar.dart';

class Dashboard extends StatelessWidget{
  const Dashboard({Key? key}): super(key: key);

  Widget build(BuildContext context){

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Welcome to wow pizza"),
          centerTitle:true,
          backgroundColor:Colors.deepOrange,
          ),
        body: Column(children:[
          Image.asset('Image/meal.jpg',
            width: 400.0,
            height: 300.0,),
          Text('Wanna order something...',
          style:TextStyle(decoration: TextDecoration.none,fontSize: 30.0),
          textAlign: TextAlign.center,
            ),
          ElevatedButton(
              onPressed:() async =>{
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TopNavigationBar(),
                    ),
                        (route) => false)
              },
            child: Text('Lets Go'),
            style: ElevatedButton.styleFrom(primary: Colors.amber),
          )

        ],

        ),
      ),
    );
  }
}