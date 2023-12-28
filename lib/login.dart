

import 'package:animal/home.dart';
import 'package:animal/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// void main(){
//   return runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: SplashScreen(),
//     // routes: {
//     //   "login":(context)=>Login(),
//     //   "home":(context)=>MyApp(),
//     // },
//   ),
//   );
// }

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _loginState();
}

class _loginState extends State<Login> {
  final _username=TextEditingController();
  final _password=TextEditingController();
  bool _validateUsername=false;
  bool _validatePassword=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _loginAppBar,
        body: _loginBody,
    );
  }

  AppBar get _loginAppBar{
    return AppBar(
      centerTitle: true,
      title: Text("AniMal"),
      titleTextStyle: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        letterSpacing: 6,
      ),
      backgroundColor: Colors.green,
    );
  }

  Widget get _loginBody{
    return Stack(
      fit: StackFit.expand,
        children: [
          Container(
            decoration:BoxDecoration(
                color: Colors.white,
            ),
          ),
          ListView(
            scrollDirection: Axis.vertical,
            children: [
              Container(
                child:
                Image(image: AssetImage("assets/logo.jpg"),),
              ),
//Email
              Container(
                  padding: EdgeInsets.all(5),
                  child:TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Email",
                      errorText: _validateUsername?"Email can not null":null,
                    ),
                    controller: _username,
                  )
              ),
              SizedBox(height: 10,),
//Password
              Container(
                  padding: EdgeInsets.all(5),
                  child:TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Password",
                      errorText: _validatePassword? "Password can not be null":null,
                    ),
                    controller: _password,
                  )
              ),
              SizedBox(height: 20,),
//Buttom Login
              Container(
                padding: EdgeInsets.fromLTRB(150,0,150,0),
                child: ElevatedButton(
                  child: Text("Login",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  onPressed: () {
                    setState(() {
                      _username.text.isEmpty? _validateUsername=true:_validateUsername=false;
                      _password.text.isEmpty? _validatePassword=true:_validatePassword=false;
                      if(_username.text=="Bormey" && _password.text=="Bormey"){
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));
                        // Navigator.push(context as BuildContext, MaterialPageRoute(builder: (context){return const MyApp();}));
                        Navigator.pushNamed(context , "home");
                        _username.clear();
                        _password.clear();
                      }else{
                        showDialog(context: context, builder: (context)=>AlertDialog(
                          title: Text("Error",style: TextStyle(
                            color: Colors.red,
                          ),),
                          content: Text("Invalid Email or Password!",textAlign: TextAlign.center,),
                          icon: Icon(Icons.warning_amber_outlined,color: Colors.red,size: 50,),
                          actions: [
                            TextButton(onPressed: () {
                              setState(() {
                                Navigator.pop(context);
                              });
                            }, child: Text("Ok"))
                          ],
                        ));
                      }
                      // if(_username.text.isEmpty){
                      //   _validateUsername=true;
                      // }else{
                      //   _validateUsername=false;
                      // }
                    });
                  },
                ),
              ),
//ForgetPassword
              Container(
                padding: EdgeInsets.fromLTRB(130,0,130,0),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      Navigator.pushNamed(context, "forgetpassword");
                    });
                  },
                  child: Text("Forget Password",
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold
                    ),),
                ),
              ),
//Sign Up
              Container(
                padding: EdgeInsets.fromLTRB(130,0,130,0),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      Navigator.pushNamed(context, "signup");
                    });
                  },
                  child: Text("Sign Up?",
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold
                    ),),
                ),
              ),
            ],
          ),
        ],
    );
  }
}






