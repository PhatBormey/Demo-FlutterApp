import 'package:flutter/material.dart';
class DogMovie extends StatelessWidget {
  const DogMovie({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Container(
            child: Text(
              "Dog",
              style: TextStyle(
                color: Colors.red,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back,color: Colors.red,),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions:[
            CircleAvatar(
              backgroundImage: AssetImage("assets/mypic.jpg"),
            )
          ],
        ),
        body: Container(

        ),
      ),
    );
  }
}