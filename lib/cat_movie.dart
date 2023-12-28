import 'package:flutter/material.dart';

import 'movie_reusable_widget.dart';
class CatMovie extends StatefulWidget {
   CatMovie({super.key});

  @override
  State<CatMovie> createState() => _CatMovieState();
}

class _CatMovieState extends State<CatMovie> {
   final controller=ScrollController();

  final List<String> catImage=[
    "assets/Cat_Movie_001.jpg",
    "assets/Cat_Movie_002.jpg",
    "assets/Cat_Movie_003.jpg",
    "assets/Cat_Movie_004.jpg",
    "assets/Cat_Movie_005.jpg",
    "assets/Cat_Movie_006.jpg",
    "assets/Cat_Movie_007.jpg",
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
           "Cat",
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
           itemCount: catImage.length,
           itemBuilder: (context,index){
             return Container(
               child: ClipRRect(
                 borderRadius: BorderRadius.circular(7),
                 child: Image.asset(
                   catImage[index],
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
