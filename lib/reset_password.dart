import 'package:flutter/material.dart';
class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        appBar: _buildForgetPassAppBar,
      ),
    );
  }
  AppBar get _buildForgetPassAppBar{
    return AppBar(
      leading:IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          setState(() {
            Navigator.pop(context);
          });
        },
      ),
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
}
