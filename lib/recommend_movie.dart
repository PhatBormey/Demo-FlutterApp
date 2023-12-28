import 'package:flutter/material.dart';

import 'movie_reusable_widget.dart';
class RecommendMovie extends StatefulWidget {
  RecommendMovie({super.key});

  @override
  State<RecommendMovie> createState() => _RecommendMovieState();
}

class _RecommendMovieState extends State<RecommendMovie> {
  final controller=ScrollController();

  final List<String> recImage=[
    "assets/Cat_Movie_001.jpg",
    "assets/Dog_Movie_001.jpg",
    "assets/Crocodile_Movie_001.jpg",
    "assets/Snake_Movie_001.jpg",
  ];

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
              "Recommend for you",
              style: TextStyle(
                color: Colors.green,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back,color: Colors.green,),
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
          padding: EdgeInsets.all(5),
          child: GridView.builder(
              controller: controller,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
                childAspectRatio: 0.75,
              ),
              itemCount: recImage.length,
              itemBuilder: (context,index){
                return Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(7),
                    child: Image.asset(
                      recImage[index],
                      fit: BoxFit.cover,
                      width: 190,
                    ),
                  ),
                );
              }
          ),
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.white,
            foregroundColor: Colors.green,
            child: Icon(Icons.refresh,size: 35,),
            onPressed: () {
              setState((){
                controller.animateTo(
                    controller.position.minScrollExtent,
                    duration: Duration(seconds: 1),
                    curve: Curves.ease);
              });
            }),

      ),
    );
  }
}
