import 'package:flutter/material.dart';
class MovieReusableWidget extends StatelessWidget {
   MovieReusableWidget({
    super.key,
    required this.recImage,
    required this.catImage,
    required this.dogImage,
    required this.croImage,
    required this.snaImage,
  });
  final List<String> recImage;
  final List<String> catImage;
  final List<String> dogImage;
  final List<String> croImage;
  final List<String> snaImage;

final controller=ScrollController();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView.builder(
        controller: controller,
          scrollDirection: Axis.horizontal,
          itemCount: recImage.length,
          itemBuilder:(context , index) {
            return Container(
              padding: EdgeInsets.only(right: 5),
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
    );
  }
}
