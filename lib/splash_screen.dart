
import 'dart:async';

import 'package:animal/cat_movie.dart';
import 'package:animal/crocodile_movie.dart';
import 'package:animal/dog_movie.dart';
import 'package:animal/home.dart';
import 'package:animal/login.dart';
import 'package:animal/movie.dart';
import 'package:animal/recommend_movie.dart';
import 'package:animal/reset_password.dart';
import 'package:animal/sign_up.dart';
import 'package:animal/snake_movie.dart';
import 'package:animal/profile_screen.dart';
import 'package:flutter/material.dart';
void main(){
  // return runApp(Profile());
  return runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    // home: SplashScreen(),
    initialRoute: "/",
    routes:{
      "/":(context)=>SplashScreen(),
      "signup":(context)=>SignUp(),
      "login":(context)=>Login(),
      "forgetpassword":(context)=>ForgetPassword(),
      "home":(context)=>MyApp(),
      "movie":(context)=>Movie(),
      "profile":(context)=>Profile(),

    },
  ));
}
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 2),(){
      Navigator.pushNamed(context, "login");
    });
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen(),
    );
  }
}
class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
              decoration:BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.green,Colors.white,Colors.black87,],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  )
              )
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("assets/logo.jpg",),
                radius:100 ,
              ),
              SizedBox(height: 15,),
              Container(
                child: Text("AniMal",style: TextStyle(
                  fontSize: 30,
                  color: Colors.green,
                  fontWeight:FontWeight.bold,
                  letterSpacing: 6,
                ),),
              ),
            ],
          )
        ],
      ),

      // body: Container(
      // child: Center(
      //   child: Image(image: AssetImage("assets/logo.jpg"),),
      // ),
      // ),

    );
  }
}

