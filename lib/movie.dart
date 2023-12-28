import 'package:flutter/material.dart';

import 'movie_reusable_widget.dart';
import 'movie_row_title.dart';
class Movie extends StatefulWidget {
  const Movie({super.key});

  @override
  State<Movie> createState() => _PhotoState();
}

class _PhotoState extends State<Movie> {
  final controller=ScrollController();
  final List<String> recImage=[
    "assets/Cat_Movie_001.jpg",
    "assets/Dog_Movie_001.jpg",
    "assets/Crocodile_Movie_001.jpg",
    "assets/Snake_Movie_001.jpg",
  ];
  final List<String> catImage=[
    "assets/Cat_Movie_001.jpg",
    "assets/Cat_Movie_002.jpg",
    "assets/Cat_Movie_003.jpg",
    "assets/Cat_Movie_004.jpg",
  ];
  final List<String> dogImage=[
    "assets/Dog_Movie_001.jpg",
    "assets/Dog_Movie_002.jpg",
    "assets/Dog_Movie_003.jpg",
    "assets/Dog_Movie_004.jpg",
  ];
  final List<String> croImage=[
    "assets/Crocodile_Movie_001.jpg",
    "assets/Crocodile_Movie_002.jpg",
    "assets/Crocodile_Movie_003.jpg",
    "assets/Crocodile_Movie_004.jpg",
  ];
  final List<String> snaImage=[
    "assets/Snake_Movie_001.jpg",
    "assets/Snake_Movie_002.jpg",
    "assets/Snake_Movie_003.jpg",
    "assets/Snake_Movie_004.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _buildAppBar,
        body: _buildBody,
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
  AppBar get _buildAppBar{
    return AppBar(
        backgroundColor: Colors.transparent ,
        elevation: 0,
        centerTitle: true,
        title: Container(
        child: Text("The Movie",
        style: TextStyle(

          color: Colors.green,
        fontSize: 30,
        fontWeight: FontWeight.bold,
    ),),
        ),
      leading: IconButton(
        icon: Icon(Icons.arrow_back,color: Colors.green,),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions:[
             CircleAvatar(

              radius: 20,
              backgroundImage: AssetImage("assets/mypic.jpg"),
               child: ClipRRect(
                 borderRadius: BorderRadius.circular(20),
                 child: Container(
                   height: 40,
                   width: 40,
                   child: ElevatedButton(
                     onPressed: () {
                       Navigator.pushNamed(context, "profile");
                     },
                     child: Text(""),
                     style: ElevatedButton.styleFrom(
                       backgroundColor: Colors.transparent,
                       elevation: 0,

                     ),
                   ),
                 ),
               ),

        )

      ],
    );
  }
  Widget get  _buildBody{
    return Padding(
      padding: const EdgeInsets.all(5),
      child: ListView(
        controller: controller,
        children: [
          RowTitle(
            title: 'Recommend for you',
            subtitle: 'See all',),
          const SizedBox(height: 5,),
          MovieReusableWidget(
            recImage: recImage,
            catImage: const [],
            dogImage: const [],
            croImage: const[],
            snaImage: const [],
          ),
          const SizedBox(height: 10,),
          RowTitle(
            title: 'Cat',
            subtitle: 'See all',),
          const SizedBox(height: 5,),
          MovieReusableWidget(
            recImage: catImage,
            catImage: const [],
            dogImage: const [],
            croImage: const[],
            snaImage: const [],
          ),
          const SizedBox(height: 10,),
          RowTitle(
            title: 'Dog',
            subtitle: 'See all',),
          const SizedBox(height: 5,),
          MovieReusableWidget(
            recImage: dogImage,
            catImage: const [],
            dogImage: const [],
            croImage: const[],
            snaImage: const [],
          ),

          const SizedBox(height: 10,),
          RowTitle(
            title: 'Crocodile',
            subtitle: 'See all',),
          const SizedBox(height: 5,),
          MovieReusableWidget(
            recImage: croImage,
            catImage: const [],
            dogImage: const [],
            croImage: const[],
            snaImage: const [],
          ),
          const SizedBox(height: 10,),
          RowTitle(
            title: 'Snake',
            subtitle: 'See all',),
          const SizedBox(height: 5,),
          MovieReusableWidget(
            recImage: snaImage,
            catImage: const [],
            dogImage: const [],
            croImage: const[],
            snaImage: const [],
          ),
        ],
      ),
    );
  }
}



