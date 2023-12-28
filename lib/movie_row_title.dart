import 'package:animal/crocodile_movie.dart';
import 'package:animal/recommend_movie.dart';
import 'package:animal/snake_movie.dart';
import 'package:flutter/material.dart';
import 'dog_movie.dart';
import 'cat_movie.dart';
class RowTitle extends StatelessWidget {
  RowTitle({
    super.key, required this.title, required this.subtitle,
  });
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,

          ),
        ),
        InkWell(
          onTap: (){
            if(title=="Recommend for you"){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>RecommendMovie()));
            }else if(title=="Cat"){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>CatMovie()));
            }else if(title=="Dog"){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DogMovie()));
            }else if(title=="Crocodile"){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>CrocodileMovie()));
            }else if(title=="Snake"){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SnakeMovie()));
            }
          },
          child: Text(subtitle,
            style: TextStyle(
                color: Colors.green,
                fontSize: 15
            ),
          ),
        )
      ],
    );
  }
}